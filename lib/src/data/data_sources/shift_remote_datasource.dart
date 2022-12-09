import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dexter_health/core/constants/firebase_collections.dart';
import 'package:dexter_health/core/network/network_info.dart';
import 'package:dexter_health/core/utils/internet_safe_runner.dart';
import 'package:dexter_health/src/data/models/nurse_assigned_shift_model.dart';
import 'package:dexter_health/src/data/models/shift_model.dart';
import 'package:dexter_health/src/data/models/task_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

abstract class ShiftRemoteDatasource {
  Future<List<ShiftModel>> getShifts();

  Future<NurseAssignedShiftModel?> getTodayAssignedShift({
    String? nurseId,
  });

  Future<NurseAssignedShiftModel?> getTomorrowAssignedShift({
    String? nurseId,
  });

  Future<void> assignTodayShift({
    required NurseAssignedShiftModel nurseAssignedShift,
  });

  Future<void> assignTomorrowShift({
    required NurseAssignedShiftModel nurseAssignedShift,
  });

  Future<List<TaskModel>> getTasks({
    required String assignedShiftId,
  });

  Future<List<TaskModel>> getPendingTasks({
    required String assignedShiftId,
  });

  Future<void> addTask({
    required TaskModel task,
  });

  Future<void> markTaskAsCompleted({
    required String taskId,
  });

  Future<void> moveTaskToNewShift({
    required List<String> taskIds,
    required String assignedShiftId,
  });

  Future<void> addShiftToHistory({
    required NurseAssignedShiftModel nurseAssignedShift,
  });

  Future<List<NurseAssignedShiftModel>> getAssignedShiftHistory({
    String? nurseId,
  });
}

@Singleton(as: ShiftRemoteDatasource)
class ShiftRemoteDatasourceImpl implements ShiftRemoteDatasource {
  final FirebaseFirestore firebaseFirestore;
  final FirebaseAuth firebaseAuth;
  final NetworkInfo networkInfo;
  late final InternetSafeRunner internetSafeRunner;

  ShiftRemoteDatasourceImpl({
    required this.firebaseFirestore,
    required this.firebaseAuth,
    required this.networkInfo,
  }) {
    internetSafeRunner = InternetSafeRunner(networkInfo);
  }

  @override
  Future<void> addTask({
    required TaskModel task,
  }) {
    return internetSafeRunner<void>(safeCallback: () async {
      await firebaseFirestore.collection(FirebaseCollection.tasks).doc(task.id).set(task.toJson());
    });
  }

  @override
  Future<void> assignTodayShift({
    required NurseAssignedShiftModel nurseAssignedShift,
  }) {
    return internetSafeRunner<void>(
      safeCallback: () async {
        return await firebaseFirestore
            .collection(
              FirebaseCollection.nurseAssignedShifts,
            )
            .doc(nurseAssignedShift.nurseModel.id)
            .collection(FirebaseCollection.today)
            .doc()
            .set(
              nurseAssignedShift.toJson(),
            );
      },
    );
  }

  @override
  Future<void> assignTomorrowShift({
    required NurseAssignedShiftModel nurseAssignedShift,
  }) async {
    return internetSafeRunner<void>(
      safeCallback: () async {
        return await firebaseFirestore
            .collection(
              FirebaseCollection.nurseAssignedShifts,
            )
            .doc(nurseAssignedShift.nurseModel.id)
            .collection(FirebaseCollection.tomorrow)
            .doc()
            .set(
              nurseAssignedShift.toJson(),
            );
      },
    );
  }

  @override
  Future<List<NurseAssignedShiftModel>> getAssignedShiftHistory({
    String? nurseId,
  }) async {
    return internetSafeRunner<List<NurseAssignedShiftModel>>(
      safeCallback: () async {
        final id = nurseId ?? firebaseAuth.currentUser!.uid;
        final histories = await firebaseFirestore.collection(FirebaseCollection.histories).where('nurse.id', isEqualTo: id).get();
        return histories.docs.map((e) => NurseAssignedShiftModel.fromJson(e.data())).toList();
      },
    );
  }

  @override
  Future<void> addShiftToHistory({
    required NurseAssignedShiftModel nurseAssignedShift,
  }) {
    return internetSafeRunner<void>(
      safeCallback: () async {
        return await firebaseFirestore.collection(FirebaseCollection.histories).doc().set(nurseAssignedShift.toJson());
      },
    );
  }

  @override
  Future<List<TaskModel>> getPendingTasks({
    required String assignedShiftId,
  }) {
    return internetSafeRunner<List<TaskModel>>(
      safeCallback: () async {
        final tasks = await firebaseFirestore
            .collection(FirebaseCollection.tasks)
            .where('nurseAssignedShift.id', isEqualTo: assignedShiftId)
            .where(
              'status',
              isEqualTo: 'pending',
            )
            .get();
        return tasks.docs.map((e) => TaskModel.fromJson(e.data())).toList();
      },
    );
  }

  @override
  Future<List<ShiftModel>> getShifts() {
    return internetSafeRunner<List<ShiftModel>>(
      safeCallback: () async {
        final shifts = await firebaseFirestore.collection(FirebaseCollection.shifts).get();
        return shifts.docs.map((e) => ShiftModel.fromJson(e.data())).toList();
      },
    );
  }

  @override
  Future<List<TaskModel>> getTasks({required String assignedShiftId}) {
    return internetSafeRunner<List<TaskModel>>(
      safeCallback: () async {
        final tasks = await firebaseFirestore
            .collection(FirebaseCollection.tasks)
            .where(
              'nurseAssignedShift.id',
              isEqualTo: assignedShiftId,
            )
            .get();
        return tasks.docs.map((e) => TaskModel.fromJson(e.data())).toList();
      },
    );
  }

  @override
  Future<NurseAssignedShiftModel?> getTodayAssignedShift({String? nurseId}) {
    return internetSafeRunner<NurseAssignedShiftModel?>(
      safeCallback: () async {
        final id = nurseId ?? firebaseAuth.currentUser!.uid;
        final todayShifts = await firebaseFirestore
            .collection(FirebaseCollection.nurseAssignedShifts)
            .doc(id)
            .collection(
              FirebaseCollection.today,
            )
            .get();
        if (todayShifts.docs.isEmpty) {
          return null;
        }
        return NurseAssignedShiftModel.fromJson(todayShifts.docs.first.data());
      },
    );
  }

  @override
  Future<NurseAssignedShiftModel?> getTomorrowAssignedShift({String? nurseId}) {
    return internetSafeRunner<NurseAssignedShiftModel?>(
      safeCallback: () async {
        final id = nurseId ?? firebaseAuth.currentUser!.uid;
        final tomorrowShifts = await firebaseFirestore
            .collection(FirebaseCollection.nurseAssignedShifts)
            .doc(id)
            .collection(
              FirebaseCollection.tomorrow,
            )
            .get();
        if (tomorrowShifts.docs.isEmpty) {
          return null;
        }
        return NurseAssignedShiftModel.fromJson(tomorrowShifts.docs.first.data());
      },
    );
  }

  @override
  Future<void> markTaskAsCompleted({required String taskId}) {
    return internetSafeRunner<void>(
      safeCallback: () async {
        return await firebaseFirestore.collection(FirebaseCollection.tasks).doc(taskId).update({
          'status': 'completed',
        });
      },
    );
  }

  @override
  Future<void> moveTaskToNewShift({required List<String> taskIds, required String assignedShiftId}) {
    return internetSafeRunner<void>(
      safeCallback: () async {
        await Future.wait(
          taskIds.map(
            (e) => firebaseFirestore.collection(FirebaseCollection.tasks).doc(e).update({
              'nurseAssignedShift.id': assignedShiftId,
            }),
          ),
        );
      },
    );
  }
}
