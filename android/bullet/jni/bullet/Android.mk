LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../../../bullet-2.81-rev2613/src

LOCAL_MODULE                := libbullet
LOCAL_CFLAGS                := -Werror
LOCAL_LDLIBS                := -llog -lGLESv2 -lz -landroid

SOURCEPATH := ../../../../bullet-2.81-rev2613/src

LOCAL_SRC_FILES := \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btConvex2dShape.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btUniformScalingShape.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btTriangleIndexVertexMaterialArray.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btConvexInternalShape.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btBox2dShape.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btTriangleBuffer.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btTriangleCallback.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btConcaveShape.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btShapeHull.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btMinkowskiSumShape.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btMultimaterialTriangleMeshShape.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btConeShape.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btCylinderShape.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btOptimizedBvh.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btTriangleMesh.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btCompoundShape.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btMultiSphereShape.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btCapsuleShape.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btTetrahedronShape.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btCollisionShape.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btConvexShape.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btEmptyShape.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btConvexHullShape.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btHeightfieldTerrainShape.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btConvexPolyhedron.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btConvexPointCloudShape.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btSphereShape.cpp \
$(SOURCEPATH)/BulletCollision/CollisionShapes/btBoxShape.cpp \
$(SOURCEPATH)/BulletCollision/Gimpact/gim_memory.cpp \
$(SOURCEPATH)/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp \
$(SOURCEPATH)/BulletCollision/Gimpact/btGImpactBvh.cpp \
$(SOURCEPATH)/BulletCollision/Gimpact/btGenericPoolAllocator.cpp \
$(SOURCEPATH)/BulletCollision/Gimpact/btContactProcessing.cpp \
$(SOURCEPATH)/BulletCollision/Gimpact/gim_contact.cpp \
$(SOURCEPATH)/BulletCollision/Gimpact/gim_box_set.cpp \
$(SOURCEPATH)/BulletCollision/Gimpact/btTriangleShapeEx.cpp \
$(SOURCEPATH)/BulletCollision/Gimpact/gim_tri_collision.cpp \
$(SOURCEPATH)/BulletCollision/Gimpact/btGImpactShape.cpp \
$(SOURCEPATH)/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp \
$(SOURCEPATH)/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp \
$(SOURCEPATH)/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp \
$(SOURCEPATH)/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp \
$(SOURCEPATH)/BulletCollision/BroadphaseCollision/btDispatcher.cpp \
$(SOURCEPATH)/BulletCollision/BroadphaseCollision/btDbvt.cpp \
$(SOURCEPATH)/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp \
$(SOURCEPATH)/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp \
$(SOURCEPATH)/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp \
$(SOURCEPATH)/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp \
$(SOURCEPATH)/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.cpp \
$(SOURCEPATH)/BulletCollision/CollisionDispatch/btManifoldResult.cpp \
$(SOURCEPATH)/BulletCollision/CollisionDispatch/btConvexConcaveCollisionAlgorithm.cpp \
$(SOURCEPATH)/BulletCollision/CollisionDispatch/btCompoundCollisionAlgorithm.cpp \
$(SOURCEPATH)/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp \
$(SOURCEPATH)/BulletCollision/CollisionDispatch/SphereTriangleDetector.cpp \
$(SOURCEPATH)/BulletCollision/CollisionDispatch/btGhostObject.cpp \
$(SOURCEPATH)/BulletCollision/CollisionDispatch/btConvex2dConvex2dAlgorithm.cpp \
$(SOURCEPATH)/BulletCollision/CollisionDispatch/btConvexPlaneCollisionAlgorithm.cpp \
$(SOURCEPATH)/BulletCollision/CollisionDispatch/btCollisionObject.cpp \
$(SOURCEPATH)/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp \
$(SOURCEPATH)/BulletCollision/CollisionDispatch/btBoxBoxDetector.cpp \
$(SOURCEPATH)/BulletCollision/CollisionDispatch/btInternalEdgeUtility.cpp \
$(SOURCEPATH)/BulletCollision/CollisionDispatch/btCollisionWorld.cpp \
$(SOURCEPATH)/BulletCollision/CollisionDispatch/btActivatingCollisionAlgorithm.cpp \
$(SOURCEPATH)/BulletCollision/CollisionDispatch/btBox2dBox2dCollisionAlgorithm.cpp \
$(SOURCEPATH)/BulletCollision/CollisionDispatch/btSimulationIslandManager.cpp \
$(SOURCEPATH)/BulletCollision/CollisionDispatch/btUnionFind.cpp \
$(SOURCEPATH)/BulletCollision/CollisionDispatch/btSphereBoxCollisionAlgorithm.cpp \
$(SOURCEPATH)/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.cpp \
$(SOURCEPATH)/BulletCollision/CollisionDispatch/btSphereTriangleCollisionAlgorithm.cpp \
$(SOURCEPATH)/BulletCollision/CollisionDispatch/btBoxBoxCollisionAlgorithm.cpp \
$(SOURCEPATH)/BulletCollision/CollisionDispatch/btEmptyCollisionAlgorithm.cpp \
$(SOURCEPATH)/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp \
$(SOURCEPATH)/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp \
$(SOURCEPATH)/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp \
$(SOURCEPATH)/BulletCollision/NarrowPhaseCollision/btRaycastCallback.cpp \
$(SOURCEPATH)/BulletCollision/NarrowPhaseCollision/btMinkowskiPenetrationDepthSolver.cpp \
$(SOURCEPATH)/BulletCollision/NarrowPhaseCollision/btGjkConvexCast.cpp \
$(SOURCEPATH)/BulletCollision/NarrowPhaseCollision/btContinuousConvexCollision.cpp \
$(SOURCEPATH)/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp \
$(SOURCEPATH)/BulletCollision/NarrowPhaseCollision/btSubSimplexConvexCast.cpp \
$(SOURCEPATH)/BulletCollision/NarrowPhaseCollision/btConvexCast.cpp \
$(SOURCEPATH)/BulletCollision/NarrowPhaseCollision/btGjkEpa2.cpp \
$(SOURCEPATH)/BulletCollision/NarrowPhaseCollision/btGjkEpaPenetrationDepthSolver.cpp \
$(SOURCEPATH)/BulletCollision/NarrowPhaseCollision/btPolyhedralContactClipping.cpp \
$(SOURCEPATH)/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp \
$(SOURCEPATH)/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp \
$(SOURCEPATH)/BulletDynamics/ConstraintSolver/btHinge2Constraint.cpp \
$(SOURCEPATH)/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp \
$(SOURCEPATH)/BulletDynamics/ConstraintSolver/btSolve2LinearConstraint.cpp \
$(SOURCEPATH)/BulletDynamics/ConstraintSolver/btContactConstraint.cpp \
$(SOURCEPATH)/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp \
$(SOURCEPATH)/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.cpp \
$(SOURCEPATH)/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp \
$(SOURCEPATH)/BulletDynamics/ConstraintSolver/btUniversalConstraint.cpp \
$(SOURCEPATH)/BulletDynamics/ConstraintSolver/btGearConstraint.cpp \
$(SOURCEPATH)/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp \
$(SOURCEPATH)/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp \
$(SOURCEPATH)/BulletDynamics/Vehicle/btRaycastVehicle.cpp \
$(SOURCEPATH)/BulletDynamics/Vehicle/btWheelInfo.cpp \
$(SOURCEPATH)/BulletDynamics/Character/btKinematicCharacterController.cpp \
$(SOURCEPATH)/BulletDynamics/Dynamics/Bullet-C-API.cpp \
$(SOURCEPATH)/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp \
$(SOURCEPATH)/BulletDynamics/Dynamics/btRigidBody.cpp \
$(SOURCEPATH)/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp \
$(SOURCEPATH)/BulletSoftBody/btDefaultSoftBodySolver.cpp \
$(SOURCEPATH)/BulletSoftBody/btSoftRigidDynamicsWorld.cpp \
$(SOURCEPATH)/BulletSoftBody/btSoftBodyConcaveCollisionAlgorithm.cpp \
$(SOURCEPATH)/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.cpp \
$(SOURCEPATH)/BulletSoftBody/btSoftRigidCollisionAlgorithm.cpp \
$(SOURCEPATH)/BulletSoftBody/btSoftBody.cpp \
$(SOURCEPATH)/BulletSoftBody/btSoftBodyHelpers.cpp \
$(SOURCEPATH)/BulletSoftBody/btSoftSoftCollisionAlgorithm.cpp \
$(SOURCEPATH)/LinearMath/btSerializer.cpp \
$(SOURCEPATH)/LinearMath/btVector3.cpp \
$(SOURCEPATH)/LinearMath/btPolarDecomposition.cpp \
$(SOURCEPATH)/LinearMath/btConvexHullComputer.cpp \
$(SOURCEPATH)/LinearMath/btAlignedAllocator.cpp \
$(SOURCEPATH)/LinearMath/btGeometryUtil.cpp \
$(SOURCEPATH)/LinearMath/btQuickprof.cpp \
$(SOURCEPATH)/LinearMath/btConvexHull.cpp \
$(SOURCEPATH)/BulletMultiThreaded/PosixThreadSupport.cpp \
$(SOURCEPATH)/BulletMultiThreaded/Win32ThreadSupport.cpp \
$(SOURCEPATH)/BulletMultiThreaded/SpuSampleTaskProcess.cpp \
$(SOURCEPATH)/BulletMultiThreaded/btThreadSupportInterface.cpp \
$(SOURCEPATH)/BulletMultiThreaded/SpuLibspe2Support.cpp \
$(SOURCEPATH)/BulletMultiThreaded/SpuFakeDma.cpp \
#$(SOURCEPATH)/BulletMultiThreaded/GpuSoftBodySolvers/DX11/btSoftBodySolver_DX11.cpp \
#$(SOURCEPATH)/BulletMultiThreaded/GpuSoftBodySolvers/DX11/btSoftBodySolver_DX11SIMDAware.cpp \
$(SOURCEPATH)/BulletMultiThreaded/GpuSoftBodySolvers/OpenCL/btSoftBodySolverOutputCLtoGL.cpp \
$(SOURCEPATH)/BulletMultiThreaded/GpuSoftBodySolvers/OpenCL/btSoftBodySolver_OpenCL.cpp \
$(SOURCEPATH)/BulletMultiThreaded/GpuSoftBodySolvers/OpenCL/btSoftBodySolver_OpenCLSIMDAware.cpp \
$(SOURCEPATH)/BulletMultiThreaded/GpuSoftBodySolvers/OpenCL/MiniCL/MiniCLTaskWrap.cpp \
$(SOURCEPATH)/BulletMultiThreaded/SpuCollisionTaskProcess.cpp \
$(SOURCEPATH)/BulletMultiThreaded/SpuSampleTask/SpuSampleTask.cpp \
$(SOURCEPATH)/BulletMultiThreaded/btParallelConstraintSolver.cpp \
$(SOURCEPATH)/BulletMultiThreaded/SequentialThreadSupport.cpp \
$(SOURCEPATH)/BulletMultiThreaded/SpuContactManifoldCollisionAlgorithm.cpp \
$(SOURCEPATH)/BulletMultiThreaded/btGpu3DGridBroadphase.cpp \
$(SOURCEPATH)/BulletMultiThreaded/SpuGatheringCollisionDispatcher.cpp \
$(SOURCEPATH)/BulletMultiThreaded/SpuNarrowPhaseCollisionTask/boxBoxDistance.cpp \
$(SOURCEPATH)/BulletMultiThreaded/SpuNarrowPhaseCollisionTask/SpuContactResult.cpp \
$(SOURCEPATH)/BulletMultiThreaded/SpuNarrowPhaseCollisionTask/SpuGatheringCollisionTask.cpp \
$(SOURCEPATH)/BulletMultiThreaded/SpuNarrowPhaseCollisionTask/SpuMinkowskiPenetrationDepthSolver.cpp \
$(SOURCEPATH)/BulletMultiThreaded/SpuNarrowPhaseCollisionTask/SpuCollisionShapes.cpp \
$(SOURCEPATH)/BulletMultiThreaded/SpuCollisionObjectWrapper.cpp \
$(SOURCEPATH)/MiniCL/MiniCLTask/MiniCLTask.cpp \
$(SOURCEPATH)/MiniCL/MiniCL.cpp \
$(SOURCEPATH)/MiniCL/MiniCLTaskScheduler.cpp

include $(BUILD_SHARED_LIBRARY)
