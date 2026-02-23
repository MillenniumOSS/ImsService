.class public Lcom/mediatek/ims/internal/ImsVTProvider;
.super Landroid/telephony/ims/ImsVideoCallProvider;
.source "ImsVTProvider.java"

# interfaces
.implements Lcom/mediatek/ims/internal/VTSource$EventCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/ImsVTProvider$ImsVTProviderTelephonyCallback;,
        Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;,
        Lcom/mediatek/ims/internal/ImsVTProvider$ConnectionEx;
    }
.end annotation


# static fields
.field public static final EARLY_MEDIA_START:I = 0x1

.field public static final EARLY_MEDIA_STOP:I = 0x0

.field private static GET_CAMERA_TRY_MAX:I = 0x0

.field public static final MA_STOP_FINISH:I = 0x1

.field public static final MA_STOP_START:I = 0x0

.field public static final MODE_PAUSE_BY_HOLD:I = 0x2

.field public static final MODE_PAUSE_BY_NORMAL:I = 0x1

.field protected static final MSG_MA_STOP_TIMEOUT:I = 0x2c8

.field protected static final MSG_RECEIVE_CALL_SESSION_EVENT:I = 0x2c2

.field protected static final MSG_REQTIMEOUT_AUTOREJECT:I = 0x2c4

.field protected static final MSG_REQUEST_CALL_DATA_USAGE:I = 0xa

.field protected static final MSG_REQUEST_CAMERA_CAPABILITIES:I = 0x9

.field protected static final MSG_RESET_WRAPPER:I = 0x2c0

.field protected static final MSG_SEND_SESSION_MODIFY_REQUEST:I = 0x7

.field protected static final MSG_SEND_SESSION_MODIFY_RESPONSE:I = 0x8

.field protected static final MSG_SET_CALLBACK:I = 0x1

.field protected static final MSG_SET_CAMERA:I = 0x2

.field protected static final MSG_SET_DEVICE_ORIENTATION:I = 0x5

.field protected static final MSG_SET_DISPLAY_SURFACE:I = 0x4

.field protected static final MSG_SET_PAUSE_IMAGE:I = 0xb

.field protected static final MSG_SET_PREVIEW_SURFACE:I = 0x3

.field protected static final MSG_SET_UI_MODE:I = 0x2bd

.field protected static final MSG_SET_ZOOM:I = 0x6

.field protected static final MSG_START_AR_CALL:I = 0x2c5

.field protected static final MSG_STOP_AR_CALL:I = 0x2c6

.field protected static final MSG_SWITCH_FEATURE:I = 0x2be

.field protected static final MSG_SWITCH_ROAMING:I = 0x2bf

.field protected static final MSG_UPDATE_CALL_RAT:I = 0x2c3

.field protected static final MSG_UPDATE_PROFILE:I = 0x2c1

.field protected static final MSG_UPDATE_SURFACE_FOR_AR_CALL:I = 0x2c7

.field public static final MTK_VILTE_ROTATE_DELAY:Ljava/lang/String; = "persist.vendor.vt.rotate_delay"

.field public static final REPLACE_PICTURE_PATH:Landroid/net/Uri;

.field public static final SESSION_EVENT_ARCALL_RECORDING_BUFFER:I = 0xfbb

.field public static final SESSION_EVENT_BAD_DATA_BITRATE:I = 0xfa8

.field public static final SESSION_EVENT_CALL_ABNORMAL_END:I = 0x3f1

.field public static final SESSION_EVENT_CALL_END:I = 0x3f0

.field public static final SESSION_EVENT_CAM_CAP_CHANGED:I = 0xfa7

.field public static final SESSION_EVENT_DATA_BITRATE_RECOVER:I = 0xfa9

.field public static final SESSION_EVENT_DATA_PATH_PAUSE:I = 0xfab

.field public static final SESSION_EVENT_DATA_PATH_RESUME:I = 0xfac

.field public static final SESSION_EVENT_DATA_USAGE_CHANGED:I = 0xfa6

.field public static final SESSION_EVENT_DEFAULT_LOCAL_SIZE:I = 0xfad

.field public static final SESSION_EVENT_DOWNGRADE_TO_VOICE:I = 0xfb9

.field public static final SESSION_EVENT_ENTER_AR_CALL:I = 0x138b

.field public static final SESSION_EVENT_ERROR_BIND_PORT:I = 0x1f47

.field public static final SESSION_EVENT_ERROR_CAMERA_CRASHED:I = 0x1f43

.field public static final SESSION_EVENT_ERROR_CAMERA_SET_IGNORED:I = 0x1f46

.field public static final SESSION_EVENT_ERROR_CODEC:I = 0x1f44

.field public static final SESSION_EVENT_ERROR_REC:I = 0x1f45

.field public static final SESSION_EVENT_ERROR_SERVER_DIED:I = 0x1f42

.field public static final SESSION_EVENT_ERROR_SERVICE:I = 0x1f41

.field public static final SESSION_EVENT_EXIT_AR_CALL:I = 0x138c

.field public static final SESSION_EVENT_GET_CAP:I = 0xfae

.field public static final SESSION_EVENT_GET_CAP_WITH_SIM:I = 0xfb3

.field public static final SESSION_EVENT_GET_SENSOR_INFO:I = 0xfb2

.field public static final SESSION_EVENT_HANDLE_CALL_SESSION_EVT:I = 0xfa3

.field public static final SESSION_EVENT_LOCAL_BUFFER:I = 0xfaf

.field public static final SESSION_EVENT_LOCAL_BW_READY_IND:I = 0x3f5

.field public static final SESSION_EVENT_LOCAL_SIZE_CHANGED:I = 0xfa5

.field public static final SESSION_EVENT_MA_STOP:I = 0xfbc

.field public static final SESSION_EVENT_MA_STOP_TIMEOUT:I = 0x138a

.field public static final SESSION_EVENT_PACKET_LOSS_RATE:I = 0xfb4

.field public static final SESSION_EVENT_PACKET_LOSS_RATE_HIGH:I = 0xfb5

.field public static final SESSION_EVENT_PACKET_LOSS_RATE_LOW:I = 0xfb7

.field public static final SESSION_EVENT_PACKET_LOSS_RATE_MEDIUM:I = 0xfb6

.field public static final SESSION_EVENT_PAUSE_IMAGE_BUFFER:I = 0xfb8

.field public static final SESSION_EVENT_PEER_CAMERA_CLOSE:I = 0x3f4

.field public static final SESSION_EVENT_PEER_CAMERA_OPEN:I = 0x3f3

.field public static final SESSION_EVENT_PEER_SIZE_CHANGED:I = 0xfa4

.field public static final SESSION_EVENT_RECEIVE_FIRSTFRAME:I = 0x3e9

.field public static final SESSION_EVENT_RECEIVE_UPGRADE_VILTE_OFF:I = 0x1389

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_COMPLETE:I = 0x3ef

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_NO_I_FRAME:I = 0x3ee

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_DURATION:I = 0x3ec

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_FILESIZE:I = 0x3ed

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_UNKNOWN:I = 0x3eb

.field public static final SESSION_EVENT_RECV_ENHANCE_SESSION_IND:I = 0xfaa

.field public static final SESSION_EVENT_RECV_SESSION_CONFIG_REQ:I = 0xfa1

.field public static final SESSION_EVENT_RECV_SESSION_CONFIG_RSP:I = 0xfa2

.field public static final SESSION_EVENT_RESTART_CAMERA:I = 0xfb1

.field public static final SESSION_EVENT_SCREEN_RECORDING_BUFFER:I = 0xfba

.field public static final SESSION_EVENT_SNAPSHOT_DONE:I = 0x3ea

.field public static final SESSION_EVENT_START_COUNTER:I = 0x3f2

.field public static final SESSION_EVENT_UPLINK_STATE_CHANGE:I = 0xfb0

.field public static final SESSION_EVENT_WARNING_SERVICE_NOT_READY:I = 0x2329

.field public static final SESSION_INDICATION_CANCEL:I = 0x0

.field public static final SESSION_INDICATION_EARLY_MEDIA:I = 0x1

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_APP:I = 0x0

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_BAD_BITRATE:I = 0x4

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_DATA_OFF:I = 0x1

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_DO_IMMEDIATELY:I = 0x4

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_MA_CRASH:I = 0x3

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_REJECT:I = 0x1

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_REJECT_PREVIOUS:I = 0x2

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_ROAMINGG:I = 0x2

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_SKIP:I = 0x3

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_WAIT:I = 0x0

.field public static final SESSION_MODIFY_CANCELED:I = 0xb

.field public static final SESSION_MODIFY_CANCEL_FAILED_BW:I = 0x7

.field public static final SESSION_MODIFY_CANCEL_FAILED_DISABLE:I = 0x3

.field public static final SESSION_MODIFY_CANCEL_FAILED_DOWNGRADE:I = 0x1

.field public static final SESSION_MODIFY_CANCEL_FAILED_INTERNAL:I = 0x5

.field public static final SESSION_MODIFY_CANCEL_FAILED_LOCAL:I = 0x6

.field public static final SESSION_MODIFY_CANCEL_FAILED_NORMAL:I = 0x2

.field public static final SESSION_MODIFY_CANCEL_FAILED_REMOTE:I = 0x4

.field public static final SESSION_MODIFY_CANCEL_FAILED_TIMEOUT:I = 0x8

.field public static final SESSION_MODIFY_CANCEL_OK:I = 0x0

.field public static final SESSION_MODIFY_INTERNALERROR:I = 0x2

.field public static final SESSION_MODIFY_INVALIDPARA:I = 0x8

.field public static final SESSION_MODIFY_INVIDEOACTION:I = 0xc

.field public static final SESSION_MODIFY_ISHOLD:I = 0x6

.field public static final SESSION_MODIFY_ISREINVITE:I = 0xd

.field public static final SESSION_MODIFY_LOCALREL:I = 0x5

.field public static final SESSION_MODIFY_NOACTIVESTATE:I = 0x4

.field public static final SESSION_MODIFY_NONEED:I = 0x7

.field public static final SESSION_MODIFY_OK:I = 0x0

.field public static final SESSION_MODIFY_REJECTBYREMOTE:I = 0xa

.field public static final SESSION_MODIFY_REQTIMEOUT:I = 0x9

.field public static final SESSION_MODIFY_RESULT_BW_MODIFYFAILED:I = 0x3

.field public static final SESSION_MODIFY_WRONGVIDEODIR:I = 0x1

.field static final TAG:Ljava/lang/String; = "ImsVT"

.field public static final UPLINK_STATE_PAUSE_RECORDING:I = 0x2

.field public static final UPLINK_STATE_RESUME_RECORDING:I = 0x3

.field public static final UPLINK_STATE_START_RECORDING:I = 0x1

.field public static final UPLINK_STATE_STOP_RECORDING:I = 0x0

.field public static final UPLINK_STATE_STOP_RECORDING_PREVIEW:I = 0x4

.field public static final VTP_STATE_DATA_OFF:I = 0x1

.field public static final VTP_STATE_MA_CRASH:I = 0x4

.field public static final VTP_STATE_NORMAL:I = 0x0

.field public static final VTP_STATE_ROAMING:I = 0x2

.field public static final VT_PROVIDER_INVALIDE_ID:I = -0x2710

.field protected static mDefaultId:I

.field public static mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;


# instance fields
.field protected mARCallCameraId:Ljava/lang/String;

.field private mARCallRecordSurface:Landroid/view/Surface;

.field private mCallConnected:Z

.field protected mCallRat:I

.field protected mCallbackHandlerThread:Landroid/os/HandlerThread;

.field protected mCameraId:Ljava/lang/String;

.field protected mCurrentProfile:Landroid/telecom/VideoProfile;

.field protected mDefaultPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

.field protected final mDelayMessageHandler:Landroid/os/Handler;

.field protected mDelayMessageHandlerThread:Landroid/os/HandlerThread;

.field public mDummySource:Lcom/mediatek/ims/internal/VTDummySource;

.field protected mDuringEarlyMedia:Z

.field protected mDuringSessionRemoteRequestOperation:Z

.field protected mDuringSessionRequestOperation:Z

.field public mHasRequestCamCap:Z

.field protected mId:I

.field protected mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

.field public mInitComplete:Z

.field protected mIsAudioCall:Z

.field protected mIsDataOff:Z

.field private mIsDestroying:Z

.field protected mIsDuringResetMode:Z

.field protected mIsMaCrashed:Z

.field protected mIsRoaming:Z

.field protected mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

.field protected final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;",
            ">;"
        }
    .end annotation
.end field

.field public mMode:I

.field protected mOrientation:I

.field protected mOrientationRunnable:Ljava/lang/Runnable;

.field private mOriginalDisplaySurface:Landroid/view/Surface;

.field private mOriginalPreviewSurface:Landroid/view/Surface;

.field protected mPauseMode:I

.field protected mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

.field protected final mProviderHandler:Landroid/os/Handler;

.field protected mProviderHandlerThread:Landroid/os/HandlerThread;

.field protected mSessionOperationFlagLock:Ljava/lang/Object;

.field private mSignalLevel:I

.field protected mSimId:I

.field public mSource:Lcom/mediatek/ims/internal/VTSource;

.field protected mState:I

.field protected mTelephonyCallback:Lcom/mediatek/ims/internal/ImsVTProvider$ImsVTProviderTelephonyCallback;

.field protected mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUplinkSource:I

.field protected mUplinkState:I

.field public mUsager:Lcom/mediatek/ims/internal/ImsVTUsageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 118
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOnByPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "mtk_vt_wrapper"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 289
    :cond_0
    const-string v0, "content://PATH"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->REPLACE_PICTURE_PATH:Landroid/net/Uri;

    .line 334
    const/16 v0, -0x2710

    sput v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    .line 337
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 403
    const/4 v0, 0x6

    sput v0, Lcom/mediatek/ims/internal/ImsVTProvider;->GET_CAMERA_TRY_MAX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 467
    invoke-direct {p0}, Landroid/telephony/ims/ImsVideoCallProvider;-><init>()V

    .line 331
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    .line 332
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    .line 333
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 335
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInitComplete:Z

    .line 343
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRequestOperation:Z

    .line 344
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRemoteRequestOperation:Z

    .line 345
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringEarlyMedia:Z

    .line 346
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDuringResetMode:Z

    .line 347
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSessionOperationFlagLock:Ljava/lang/Object;

    .line 351
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsMaCrashed:Z

    .line 354
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsRoaming:Z

    .line 357
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDataOff:Z

    .line 360
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsAudioCall:Z

    .line 363
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    .line 364
    new-instance v3, Lcom/mediatek/ims/internal/VTDummySource;

    invoke-direct {v3}, Lcom/mediatek/ims/internal/VTDummySource;-><init>()V

    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDummySource:Lcom/mediatek/ims/internal/VTDummySource;

    .line 365
    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    .line 366
    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mARCallCameraId:Ljava/lang/String;

    .line 367
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mHasRequestCamCap:Z

    .line 370
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkState:I

    .line 371
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    .line 373
    new-instance v3, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    const/16 v4, 0x140

    const/16 v5, 0xf0

    invoke-direct {v3, v4, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;-><init>(II)V

    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    .line 374
    new-instance v3, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    invoke-direct {v3, v4, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;-><init>(II)V

    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    .line 375
    new-instance v3, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    invoke-direct {v3, v4, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;-><init>(II)V

    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    .line 377
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallConnected:Z

    .line 383
    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCurrentProfile:Landroid/telecom/VideoProfile;

    .line 389
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDestroying:Z

    .line 392
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkSource:I

    .line 394
    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOriginalDisplaySurface:Landroid/view/Surface;

    .line 395
    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOriginalPreviewSurface:Landroid/view/Surface;

    .line 401
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSignalLevel:I

    .line 405
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v4, 0x8

    const v5, 0x3f666666    # 0.9f

    invoke-direct {v3, v4, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v3}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mListeners:Ljava/util/Set;

    .line 461
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientation:I

    .line 462
    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientationRunnable:Ljava/lang/Runnable;

    .line 464
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallRat:I

    .line 468
    const-string v0, "ImsVT"

    const-string v2, "New ImsVTProvider without id"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/16 v0, -0x2710

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    .line 470
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInitComplete:Z

    .line 472
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 474
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v0, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;->makeImsVTUsageManager()Lcom/mediatek/ims/internal/ImsVTUsageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUsager:Lcom/mediatek/ims/internal/ImsVTUsageManager;

    .line 476
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ProviderHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandlerThread:Landroid/os/HandlerThread;

    .line 477
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 479
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProvider$1;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider$1;-><init>(Lcom/mediatek/ims/internal/ImsVTProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    .line 609
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProvider$2;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/ImsVTProvider$2;-><init>(Lcom/mediatek/ims/internal/ImsVTProvider;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientationRunnable:Ljava/lang/Runnable;

    .line 618
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CallbackHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    .line 619
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 621
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DelayMessageHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDelayMessageHandlerThread:Landroid/os/HandlerThread;

    .line 622
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 624
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProvider$3;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDelayMessageHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider$3;-><init>(Lcom/mediatek/ims/internal/ImsVTProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDelayMessageHandler:Landroid/os/Handler;

    .line 639
    return-void
.end method

.method private IsCallModeChanged(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)Z
    .locals 2
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 2260
    const/4 v0, 0x0

    .line 2261
    .local v0, "callModeChanged":Z
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2262
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2263
    const/4 v0, 0x1

    goto :goto_0

    .line 2264
    :cond_0
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2265
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2266
    const/4 v0, 0x1

    .line 2268
    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic access$000(Lcom/mediatek/ims/internal/ImsVTProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsVTProvider;

    .line 114
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSignalLevel:I

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/ims/internal/ImsVTProvider;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsVTProvider;
    .param p1, "x1"    # I

    .line 114
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSignalLevel:I

    return p1
.end method

.method private isOP07()Z
    .locals 2

    .line 2289
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP07:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-static {v0, v1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    return v0
.end method

.method private isOP08()Z
    .locals 2

    .line 2285
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP08:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-static {v0, v1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    return v0
.end method

.method private isOP12()Z
    .locals 2

    .line 2293
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP12:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-static {v0, v1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    return v0
.end method

.method public static native nFinalization(I)I
.end method

.method public static native nInitRefVTP()I
.end method

.method public static native nInitialization(IIZ)I
.end method

.method public static native nRequestPeerConfig(ILjava/lang/String;)I
.end method

.method public static native nResponseLocalConfig(ILjava/lang/String;)I
.end method

.method public static native nSetCamera(II)I
.end method

.method public static native nSetCameraParameters(I[Lcom/mediatek/ims/internal/VTSource$Resolution;)I
.end method

.method public static native nSetCameraParametersOnly([Lcom/mediatek/ims/internal/VTSource$Resolution;)I
.end method

.method public static native nSetCameraParametersWithSim(II[Lcom/mediatek/ims/internal/VTSource$Resolution;)I
.end method

.method public static native nSetDeviceOrientation(II)I
.end method

.method public static native nSetDisplaySurface(ILandroid/view/Surface;)I
.end method

.method public static native nSetPreviewSurface(ILandroid/view/Surface;)I
.end method

.method public static native nSetSignalLevel(II)I
.end method

.method public static native nSetUIMode(II)I
.end method

.method public static native nSnapshot(IILjava/lang/String;)I
.end method

.method public static native nStartRecording(IILjava/lang/String;J)I
.end method

.method public static native nStopRecording(I)I
.end method

.method public static native nSwitchFeature(III)I
.end method

.method public static native nTagSocketWithUid(I)I
.end method

.method public static native nTriggerGetOperatorId()I
.end method

.method public static native nUpdateNetworkTable(ZILjava/lang/String;)I
.end method

.method public static postEventFromNative(IIIIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 16
    .param p0, "msg"    # I
    .param p1, "id"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I
    .param p5, "obj1"    # Ljava/lang/Object;
    .param p6, "obj2"    # Ljava/lang/Object;
    .param p7, "obj3"    # Ljava/lang/Object;

    .line 2403
    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordGet(I)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v5

    .line 2405
    .local v5, "vp":Lcom/mediatek/ims/internal/ImsVTProvider;
    const-string v6, "ImsVT"

    if-nez v5, :cond_0

    const/16 v0, 0x1f42

    if-eq v1, v0, :cond_0

    const/16 v0, 0xfae

    if-eq v1, v0, :cond_0

    const/16 v0, 0xfb3

    if-eq v1, v0, :cond_0

    .line 2409
    const-string v0, "Error: post event to Call is already release or has happen error before!"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    return-void

    .line 2413
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ID="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "] [postEventFromNative]: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    const/4 v0, 0x3

    const/high16 v8, 0x10000

    const-string v9, "Error: sensor resolution = NULL"

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/16 v12, 0x2c4

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 3230
    const-string v0, "postEventFromNative : msg = UNKNOWB"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 3143
    :sswitch_0
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_ERROR_BIND_PORT"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3145
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleMaErrorProcess()V

    .line 3146
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 3147
    goto/16 :goto_11

    .line 3162
    :sswitch_1
    const-string v0, "postEventFromNative : msg = MSG_ERROR_CAMERA_SET_IGNORED"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 3165
    goto/16 :goto_11

    .line 3156
    :sswitch_2
    const-string v0, "postEventFromNative : msg = MSG_ERROR_REC"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3158
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 3159
    goto/16 :goto_11

    .line 3150
    :sswitch_3
    const-string v0, "postEventFromNative : msg = MSG_ERROR_CODEC"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 3153
    goto/16 :goto_11

    .line 3136
    :sswitch_4
    const-string v0, "postEventFromNative : msg = MSG_ERROR_CAMERA_CRASHED"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleMaErrorProcess()V

    .line 3139
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 3140
    goto/16 :goto_11

    .line 3124
    :sswitch_5
    const-string v0, "postEventFromNative : msg = MSG_ERROR_SERVER_DIED"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->releaseVTSourceAll()V

    .line 3128
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->quitAllThread()V

    .line 3129
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordRemoveAll()V

    .line 3130
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProvider;->updateDefaultId()V

    .line 3132
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->reInitRefVTP()V

    .line 3133
    goto/16 :goto_11

    .line 3112
    :sswitch_6
    const-string v0, "postEventFromNative : msg = MSG_ERROR_SERVICE"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3115
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->release()V

    .line 3117
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordRemove(I)V

    .line 3118
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProvider;->updateDefaultId()V

    .line 3120
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 3121
    goto/16 :goto_11

    .line 3214
    :sswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "postEventFromNative : msg = SESSION_EVENT_MA_STOP, state:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3215
    const/16 v0, 0x2c8

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 3223
    :pswitch_0
    const-string v7, "remove MSG_MA_STOP_TIMEOUT msg"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3224
    iget-object v6, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mDelayMessageHandler:Landroid/os/Handler;

    invoke-virtual {v6, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 3218
    :pswitch_1
    const-string v7, "send msg MSG_MA_STOP_TIMEOUT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3219
    iget-object v6, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mDelayMessageHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x7d0

    invoke-virtual {v6, v0, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3221
    nop

    .line 3227
    :goto_0
    goto/16 :goto_11

    .line 3206
    :sswitch_8
    move-object/from16 v0, p7

    check-cast v0, Landroid/view/Surface;

    iput-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mARCallRecordSurface:Landroid/view/Surface;

    .line 3210
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/mediatek/ims/internal/VTSource;->setRecordSurface(Landroid/view/Surface;)V

    .line 3211
    goto/16 :goto_11

    .line 3198
    :sswitch_9
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    move-object/from16 v6, p7

    check-cast v6, Landroid/view/Surface;

    invoke-virtual {v0, v6}, Lcom/mediatek/ims/internal/VTSource;->setScreenRecordingSurface(Landroid/view/Surface;)V

    .line 3202
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/mediatek/ims/internal/VTSource;->setRecordSurface(Landroid/view/Surface;)V

    .line 3203
    goto/16 :goto_11

    .line 3194
    :sswitch_a
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    move-object/from16 v6, p7

    check-cast v6, Landroid/view/Surface;

    invoke-virtual {v0, v6}, Lcom/mediatek/ims/internal/VTSource;->setPauseImageSurface(Landroid/view/Surface;)V

    .line 3195
    goto/16 :goto_11

    .line 2870
    :sswitch_b
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_PACKET_LOSS_RATE"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    move/from16 v0, p2

    .line 2876
    .local v0, "lossRate":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Packet loss rate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    const/4 v7, 0x5

    if-ltz v0, :cond_1

    if-gt v0, v7, :cond_1

    .line 2879
    const-string v7, "Packet loss rate low, notify: 4023"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    const/16 v6, 0xfb7

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto :goto_1

    .line 2882
    :cond_1
    const/16 v8, 0xa

    if-ge v7, v0, :cond_2

    if-gt v0, v8, :cond_2

    .line 2883
    const-string v7, "Packet loss rate medium, notify: 4022"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    const/16 v6, 0xfb6

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto :goto_1

    .line 2886
    :cond_2
    if-ge v8, v0, :cond_3

    .line 2887
    const-string v7, "Packet loss rate high, notify: 4021"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2888
    const/16 v6, 0xfb5

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto :goto_1

    .line 2891
    :cond_3
    const-string v7, "Packet loss rate incorrect"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    :goto_1
    const-string v6, "persist.vendor.vt.RTPInfo"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 2898
    .local v6, "RTP_DBG_ON":Z
    if-eqz v6, :cond_3b

    .line 2899
    mul-int/lit8 v7, v0, -0x1

    int-to-long v7, v7

    invoke-virtual {v5, v7, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->changeCallDataUsage(J)V

    goto/16 :goto_11

    .line 2929
    .end local v0    # "lossRate":I
    .end local v6    # "RTP_DBG_ON":Z
    :sswitch_c
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_GET_CAP_WITH_SIM"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    sget-boolean v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    if-eqz v0, :cond_4

    .line 2933
    invoke-static {}, Lcom/mediatek/ims/internal/VTDummySource;->getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;

    move-result-object v0

    move-object v7, v0

    .local v0, "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    goto :goto_2

    .line 2935
    .end local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :cond_4
    invoke-static {}, Lcom/mediatek/ims/internal/VTSource;->getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;

    move-result-object v0

    move-object v7, v0

    .line 2937
    .local v7, "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :goto_2
    if-nez v7, :cond_5

    .line 2938
    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    :cond_5
    const/4 v8, 0x0

    .line 2942
    .local v8, "major_sim_id":I
    const/4 v0, 0x1

    .line 2944
    .local v0, "ImsCount":I
    sget-object v9, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v9, v9, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/ims/ImsService;->getModemMultiImsCount()I

    move-result v9

    .line 2946
    .end local v0    # "ImsCount":I
    .local v9, "ImsCount":I
    const-wide/16 v10, 0xc8

    if-gt v9, v15, :cond_7

    .line 2948
    :goto_3
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->isCapabilitySwitching()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2950
    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2952
    :goto_4
    goto :goto_3

    .line 2951
    :catch_0
    move-exception v0

    goto :goto_4

    .line 2955
    :cond_6
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v0

    move v8, v0

    .end local v8    # "major_sim_id":I
    .local v0, "major_sim_id":I
    goto :goto_5

    .line 2958
    .end local v0    # "major_sim_id":I
    .restart local v8    # "major_sim_id":I
    :cond_7
    move/from16 v0, p1

    move v8, v0

    .line 2961
    :goto_5
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0, v8}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->waitSimStateStable(I)V

    .line 2963
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0, v8}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getSimCardState(I)I

    move-result v0

    const/16 v12, 0xb

    if-eq v0, v12, :cond_f

    .line 2968
    const/4 v0, 0x0

    .line 2969
    .local v0, "subMgr":Landroid/telephony/SubscriptionManager;
    const/4 v12, 0x0

    .line 2970
    .local v12, "mySubInfo":Landroid/telephony/SubscriptionInfo;
    const-string v13, ""

    .line 2971
    .local v13, "iccid":Ljava/lang/String;
    const/4 v14, 0x0

    move v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v0

    .line 2974
    .end local v0    # "subMgr":Landroid/telephony/SubscriptionManager;
    .local v12, "subMgr":Landroid/telephony/SubscriptionManager;
    .local v13, "mySubInfo":Landroid/telephony/SubscriptionInfo;
    .local v14, "iccid":Ljava/lang/String;
    .local v15, "count":I
    :goto_6
    if-lez v15, :cond_8

    .line 2976
    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2978
    goto :goto_7

    .line 2977
    :catch_1
    move-exception v0

    .line 2981
    :cond_8
    :goto_7
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v0, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v12

    .line 2982
    if-nez v12, :cond_9

    .line 2983
    const-string v0, "Cannot get SubscriptionManager"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    add-int/lit8 v15, v15, 0x1

    .line 2985
    goto :goto_8

    .line 2988
    :cond_9
    add-int/lit8 v0, v8, 0x1

    invoke-virtual {v12, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 2989
    .end local v13    # "mySubInfo":Landroid/telephony/SubscriptionInfo;
    .local v0, "mySubInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v0, :cond_a

    .line 2990
    const-string v13, "Cannot get mySubInfo"

    invoke-static {v6, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2991
    add-int/lit8 v15, v15, 0x1

    .line 2992
    move-object v13, v0

    goto :goto_8

    .line 2995
    :cond_a
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v13

    .line 2996
    .end local v14    # "iccid":Ljava/lang/String;
    .local v13, "iccid":Ljava/lang/String;
    add-int/lit8 v15, v15, 0x1

    move-object v14, v13

    move-object v13, v0

    .line 2998
    .end local v0    # "mySubInfo":Landroid/telephony/SubscriptionInfo;
    .local v13, "mySubInfo":Landroid/telephony/SubscriptionInfo;
    .restart local v14    # "iccid":Ljava/lang/String;
    :goto_8
    const-string v0, ""

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v10, 0x32

    if-eqz v0, :cond_c

    if-lt v15, v10, :cond_b

    goto :goto_9

    :cond_b
    const-wide/16 v10, 0xc8

    goto :goto_6

    .line 3000
    :cond_c
    :goto_9
    const-string v0, "N/A"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    if-lt v15, v10, :cond_d

    goto :goto_a

    .line 3004
    :cond_d
    const-string v0, "SIM state READY"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 3001
    :cond_e
    :goto_a
    const-string v0, "SIM state ABSENT"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    const/4 v8, -0x1

    .line 3008
    .end local v12    # "subMgr":Landroid/telephony/SubscriptionManager;
    .end local v13    # "mySubInfo":Landroid/telephony/SubscriptionInfo;
    .end local v14    # "iccid":Ljava/lang/String;
    .end local v15    # "count":I
    :cond_f
    :goto_b
    invoke-static {v2, v8, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCameraParametersWithSim(II[Lcom/mediatek/ims/internal/VTSource$Resolution;)I

    .line 3009
    goto/16 :goto_11

    .line 3177
    .end local v7    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    .end local v8    # "major_sim_id":I
    .end local v9    # "ImsCount":I
    :sswitch_d
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_GET_SENSOR_INFO"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    invoke-static {}, Lcom/mediatek/ims/internal/VTSource;->getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;

    move-result-object v0

    .line 3180
    .local v0, "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    if-nez v0, :cond_10

    .line 3181
    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3184
    :cond_10
    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCameraParametersOnly([Lcom/mediatek/ims/internal/VTSource$Resolution;)I

    .line 3185
    goto/16 :goto_11

    .line 3189
    .end local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :sswitch_e
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RESTART_CAMERA"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3190
    const-string v0, "don\'t restart camera anymore"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    goto/16 :goto_11

    .line 3053
    :sswitch_f
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_UPLINK_STATE_CHANGE"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    iput v3, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkState:I

    .line 3056
    packed-switch v3, :pswitch_data_1

    .line 3096
    goto/16 :goto_11

    .line 3089
    :pswitch_2
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 3090
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->stopRecordingAndPreview()V

    .line 3092
    :cond_11
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->clearPauseMode()V

    .line 3093
    goto/16 :goto_11

    .line 3080
    :pswitch_3
    invoke-virtual {v5, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->resetPauseMode(I)V

    .line 3083
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasPauseMode()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 3084
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->startRecording()V

    goto/16 :goto_11

    .line 3071
    :pswitch_4
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasPauseMode()Z

    move-result v0

    if-nez v0, :cond_12

    .line 3073
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/mediatek/ims/internal/VTSource;->stopRecording(Z)V

    .line 3076
    :cond_12
    invoke-virtual {v5, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->setPauseMode(I)V

    .line 3077
    goto/16 :goto_11

    .line 3068
    :pswitch_5
    goto/16 :goto_11

    .line 3058
    :pswitch_6
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 3061
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/mediatek/ims/internal/VTSource;->stopRecording(Z)V

    .line 3062
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/mediatek/ims/internal/VTSource;->setRecordSurface(Landroid/view/Surface;)V

    .line 3064
    :cond_13
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->clearPauseMode()V

    .line 3065
    goto/16 :goto_11

    .line 3043
    :sswitch_10
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_LOCAL_BUFFER"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/mediatek/ims/internal/VTSource;->stopRecording(Z)V

    .line 3047
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    move-object/from16 v6, p7

    check-cast v6, Landroid/view/Surface;

    invoke-virtual {v0, v6}, Lcom/mediatek/ims/internal/VTSource;->setRecordSurface(Landroid/view/Surface;)V

    .line 3048
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->startRecording()V

    .line 3049
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->clearPauseMode()V

    .line 3050
    goto/16 :goto_11

    .line 3013
    :sswitch_11
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_GET_CAP"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    const/4 v0, 0x0

    .line 3016
    .restart local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    sget-boolean v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    if-eqz v7, :cond_14

    .line 3017
    invoke-static {}, Lcom/mediatek/ims/internal/VTDummySource;->getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;

    move-result-object v0

    goto :goto_d

    .line 3021
    :cond_14
    const/4 v7, 0x0

    move v8, v7

    move-object v7, v0

    .line 3023
    .end local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    .restart local v7    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    .local v8, "tryCnt":I
    :cond_15
    if-lez v8, :cond_16

    .line 3025
    const-wide/16 v10, 0x1f4

    :try_start_2
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3027
    goto :goto_c

    .line 3026
    :catch_2
    move-exception v0

    .line 3029
    :cond_16
    :goto_c
    invoke-static {}, Lcom/mediatek/ims/internal/VTSource;->getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;

    move-result-object v7

    .line 3030
    add-int/lit8 v8, v8, 0x1

    .line 3031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get Camera Resolutions tryCnt : "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    if-nez v7, :cond_17

    sget v0, Lcom/mediatek/ims/internal/ImsVTProvider;->GET_CAMERA_TRY_MAX:I

    if-le v8, v0, :cond_15

    .line 3034
    .end local v8    # "tryCnt":I
    :cond_17
    move-object v0, v7

    .end local v7    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    .restart local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :goto_d
    if-nez v0, :cond_18

    .line 3035
    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    :cond_18
    invoke-static {v2, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCameraParameters(I[Lcom/mediatek/ims/internal/VTSource$Resolution;)I

    .line 3039
    goto/16 :goto_11

    .line 3102
    .end local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :sswitch_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "postEventFromNative : msg = SESSION_EVENT_DEFAULT_LOCAL_SIZE, W="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", H="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iput v3, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    .line 3104
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iput v4, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    .line 3105
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iput v3, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    .line 3106
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iput v4, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    .line 3107
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0, v3, v4}, Lcom/mediatek/ims/internal/VTSource;->setPauseImageSize(II)V

    .line 3108
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0, v3, v4}, Lcom/mediatek/ims/internal/VTSource;->setScreenShareSize(II)V

    .line 3109
    goto/16 :goto_11

    .line 3169
    :sswitch_13
    const-string v0, "postEventFromNative : msg = EVENT_DATA_PATH_CHANGED"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    sget-boolean v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    if-nez v0, :cond_3b

    .line 3172
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_11

    .line 2646
    :sswitch_14
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RECV_ENHANCE_SESSION_IND"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    if-nez v3, :cond_19

    .line 2649
    const-string v0, "SESSION_INDICATION_CANCEL"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    invoke-virtual {v5, v13}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 2652
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_f

    .line 2654
    :cond_19
    if-ne v15, v3, :cond_1c

    .line 2655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SESSION_INDICATION_EARLY_MEDIA, early media="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    if-nez v4, :cond_1a

    .line 2658
    iput-boolean v13, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringEarlyMedia:Z

    goto :goto_e

    .line 2659
    :cond_1a
    if-ne v4, v15, :cond_1b

    .line 2660
    iput-boolean v15, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringEarlyMedia:Z

    .line 2665
    :cond_1b
    :goto_e
    return-void

    .line 2668
    :cond_1c
    :goto_f
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v7, p5

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v0

    .line 2670
    .local v0, "IndicationProfile":Landroid/telecom/VideoProfile;
    sget-object v7, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v7}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsOemCallUtil()Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    move-result-object v7

    invoke-interface {v7}, Lcom/mediatek/ims/plugin/ImsCallOemPlugin;->handleCancelUpgradeAsResponse()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 2671
    const-string v7, "postEventFromNative, change cancel request to response for GMS dialer"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2672
    invoke-virtual {v5, v10, v0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponseInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto/16 :goto_11

    .line 2677
    :cond_1d
    invoke-virtual {v5, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 2680
    goto/16 :goto_11

    .line 2905
    .end local v0    # "IndicationProfile":Landroid/telecom/VideoProfile;
    :sswitch_15
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_BAD_DATA_BITRATE"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2906
    iget-boolean v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallConnected:Z

    if-nez v0, :cond_1e

    .line 2907
    const-string v0, "call not connected, ignore"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    goto/16 :goto_11

    .line 2910
    :cond_1e
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsOemCallUtil()Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/ims/plugin/ImsCallOemPlugin;->needNotifyBadBitRate()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2911
    sget-boolean v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    if-nez v0, :cond_3b

    .line 2912
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_11

    .line 2915
    :cond_1f
    const-string v0, "handle BAD_DATA_BITRATE in FW"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v0

    const-string v7, "mtk_key_vt_downgrade_in_bad_bitrate"

    iget v8, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v0, v7, v8}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getBooleanFromCarrierConfig(Ljava/lang/String;I)Z

    move-result v0

    .line 2920
    .local v0, "isNeedDowngrade":Z
    if-eqz v0, :cond_20

    .line 2921
    const-string v7, "downgrade if bad bitrate"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleBadBitrateProcess()V

    .line 2926
    .end local v0    # "isNeedDowngrade":Z
    :cond_20
    goto/16 :goto_11

    .line 2866
    :sswitch_16
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_DATA_USAGE_CHANGED"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    goto/16 :goto_11

    .line 2822
    :sswitch_17
    const-string v7, "postEventFromNative : msg = SESSION_EVENT_LOCAL_SIZE_CHANGED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2824
    iget v7, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkSource:I

    if-ne v7, v15, :cond_21

    .line 2825
    const-string v0, "setPauseImageSize in pause image mode only, don\'t change preview size"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0, v3, v4}, Lcom/mediatek/ims/internal/VTSource;->setPauseImageSize(II)V

    .line 2827
    goto/16 :goto_11

    .line 2830
    :cond_21
    if-ne v7, v14, :cond_22

    .line 2831
    const-string v0, "setScreenShareSize in screen share mode only, don\'t change preview size"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2832
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0, v3, v4}, Lcom/mediatek/ims/internal/VTSource;->setScreenShareSize(II)V

    .line 2833
    goto/16 :goto_11

    .line 2836
    :cond_22
    if-ne v7, v0, :cond_23

    .line 2837
    const-string v0, "in AR call mode, don\'t change preview size"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    goto/16 :goto_11

    .line 2841
    :cond_23
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v0, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    if-ne v0, v3, :cond_24

    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v0, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    if-ne v0, v4, :cond_24

    .line 2842
    const-string v0, "local size no change => Do not notify!"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    goto/16 :goto_11

    .line 2846
    :cond_24
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iput v3, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    .line 2847
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iput v4, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    .line 2849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update preview size, w="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", h="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    iget-boolean v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallConnected:Z

    if-nez v0, :cond_25

    .line 2852
    const-string v0, "not connected, only update preview size, not reconfig camera session"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    goto/16 :goto_11

    .line 2857
    :cond_25
    iget-boolean v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mHasRequestCamCap:Z

    if-ne v15, v0, :cond_26

    .line 2858
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->onRequestCameraCapabilities()V

    goto/16 :goto_11

    .line 2860
    :cond_26
    const-string v0, "Not request yet, just only update default w/h"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    goto/16 :goto_11

    .line 2817
    :sswitch_18
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_PEER_SIZE_CHANGED"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    invoke-virtual {v5, v3, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->changePeerDimensions(II)V

    .line 2819
    goto/16 :goto_11

    .line 2811
    :sswitch_19
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_HANDLE_CALL_SESSION_EVT"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2814
    goto/16 :goto_11

    .line 2683
    :sswitch_1a
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RECV_SESSION_CONFIG_RSP"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    iget v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    if-ne v0, v8, :cond_27

    .line 2686
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RECV_SESSION_CONFIG_RSP (call end)"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    return-void

    .line 2690
    :cond_27
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v8, p6

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v0

    .line 2691
    .local v0, "responseProfile":Landroid/telecom/VideoProfile;
    const/4 v8, 0x2

    .line 2694
    .local v8, "state":I
    invoke-virtual {v0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v9

    sget-object v11, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v11}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->getUpgradeCancelFlag()I

    move-result v11

    if-ne v9, v11, :cond_28

    .line 2696
    const/16 v6, 0xc8

    .line 2698
    .end local v8    # "state":I
    .local v6, "state":I
    packed-switch v3, :pswitch_data_2

    .line 2711
    :pswitch_7
    const/16 v6, 0xc8

    .line 2713
    goto/16 :goto_10

    .line 2707
    :pswitch_8
    const/16 v6, 0xca

    .line 2709
    goto/16 :goto_10

    .line 2703
    :pswitch_9
    const/16 v6, 0xc9

    .line 2705
    goto/16 :goto_10

    .line 2700
    :pswitch_a
    const/4 v6, 0x1

    .line 2701
    goto/16 :goto_10

    .line 2718
    .end local v6    # "state":I
    .restart local v8    # "state":I
    :cond_28
    packed-switch v3, :pswitch_data_3

    .line 2797
    :pswitch_b
    const/4 v6, 0x2

    .end local v8    # "state":I
    .restart local v6    # "state":I
    goto/16 :goto_10

    .line 2792
    .end local v6    # "state":I
    .restart local v8    # "state":I
    :pswitch_c
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->reSendLastSessionModify()V

    .line 2793
    return-void

    .line 2780
    :pswitch_d
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->isDuringNotAppDowngrade()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 2781
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->reSendLastSessionModify()V

    .line 2782
    return-void

    .line 2785
    :cond_29
    const/4 v6, 0x5

    .line 2787
    .end local v8    # "state":I
    .restart local v6    # "state":I
    goto/16 :goto_10

    .line 2775
    .end local v6    # "state":I
    .restart local v8    # "state":I
    :pswitch_e
    const/4 v6, 0x4

    .line 2776
    .end local v8    # "state":I
    .restart local v6    # "state":I
    goto/16 :goto_10

    .line 2772
    .end local v6    # "state":I
    .restart local v8    # "state":I
    :pswitch_f
    const/4 v6, 0x3

    .line 2773
    .end local v8    # "state":I
    .restart local v6    # "state":I
    goto/16 :goto_10

    .line 2769
    .end local v6    # "state":I
    .restart local v8    # "state":I
    :pswitch_10
    const/4 v6, 0x1

    .line 2770
    .end local v8    # "state":I
    .restart local v6    # "state":I
    goto/16 :goto_10

    .line 2751
    .end local v6    # "state":I
    .restart local v8    # "state":I
    :pswitch_11
    iget-boolean v7, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringEarlyMedia:Z

    if-eqz v7, :cond_2a

    .line 2752
    const-string v7, "postEventFromNative : msg = SESSION_EVENT_RECV_SESSION_CONFIG_RSP (during early media)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    const/4 v6, 0x1

    .line 2755
    .end local v8    # "state":I
    .restart local v6    # "state":I
    sget-object v7, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v8, p5

    check-cast v8, Ljava/lang/String;

    .line 2757
    invoke-virtual {v7, v8}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v7

    sget-object v8, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v9, p5

    check-cast v9, Ljava/lang/String;

    .line 2758
    invoke-virtual {v8, v9}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v8

    .line 2755
    invoke-virtual {v5, v6, v7, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponseInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 2759
    return-void

    .line 2763
    .end local v6    # "state":I
    .restart local v8    # "state":I
    :cond_2a
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->reSendLastSessionModify()V

    .line 2764
    return-void

    .line 2721
    :pswitch_12
    invoke-virtual {v0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v9

    invoke-static {v9}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 2722
    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v5, v9, v10}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 2724
    new-instance v9, Landroid/telecom/VideoProfile;

    invoke-direct {v9, v13, v14}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 2725
    .local v9, "audioProfile":Landroid/telecom/VideoProfile;
    iput-object v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 2726
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->reSendLastSessionModify()V

    .line 2728
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "] [reSendLastSessionModify] by have MA CRASH:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    return-void

    .line 2730
    .end local v9    # "audioProfile":Landroid/telecom/VideoProfile;
    :cond_2b
    sget-object v9, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v10, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v9, v10}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOn(I)Z

    move-result v9

    if-eqz v9, :cond_2c

    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 2731
    invoke-virtual {v5, v9, v15}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v9

    if-nez v9, :cond_2c

    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 2732
    invoke-virtual {v5, v9, v14}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 2735
    :cond_2c
    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallRat:I

    if-ne v9, v15, :cond_2d

    sget-object v9, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v10, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v9, v10}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isViWifiOn(I)Z

    move-result v9

    if-nez v9, :cond_2e

    .line 2736
    :cond_2d
    new-instance v9, Landroid/telecom/VideoProfile;

    invoke-direct {v9, v13, v14}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 2737
    .restart local v9    # "audioProfile":Landroid/telecom/VideoProfile;
    iput-object v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 2738
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->reSendLastSessionModify()V

    .line 2740
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "] [reSendLastSessionModify] not viwifi call, downgrade by state:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    return-void

    .line 2746
    .end local v9    # "audioProfile":Landroid/telecom/VideoProfile;
    :cond_2e
    const/4 v6, 0x1

    .line 2747
    .end local v8    # "state":I
    .restart local v6    # "state":I
    nop

    .line 2802
    :goto_10
    sget-object v7, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v8, p5

    check-cast v8, Ljava/lang/String;

    .line 2804
    invoke-virtual {v7, v8}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v7

    sget-object v8, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v9, p6

    check-cast v9, Ljava/lang/String;

    .line 2805
    invoke-virtual {v8, v9}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v8

    .line 2802
    invoke-virtual {v5, v6, v7, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponseInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 2807
    goto/16 :goto_11

    .line 2511
    .end local v0    # "responseProfile":Landroid/telecom/VideoProfile;
    .end local v6    # "state":I
    :sswitch_1b
    const-string v8, "postEventFromNative : msg = SESSION_EVENT_RECV_SESSION_CONFIG_REQ"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    new-instance v8, Landroid/telecom/VideoProfile;

    invoke-direct {v8, v0, v14}, Landroid/telecom/VideoProfile;-><init>(II)V

    move-object v0, v8

    .line 2515
    .local v0, "currentProfile":Landroid/telecom/VideoProfile;
    sget-object v8, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v9, p5

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v8

    .line 2517
    .local v8, "requestProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v8}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v9

    invoke-static {v9}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v9

    if-eqz v9, :cond_33

    .line 2518
    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v5, v9, v10}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v9

    if-eqz v9, :cond_2f

    .line 2520
    new-instance v9, Landroid/telecom/VideoProfile;

    invoke-direct {v9, v13, v14}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 2521
    .restart local v9    # "audioProfile":Landroid/telecom/VideoProfile;
    iput-object v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 2522
    invoke-virtual {v5, v15}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 2523
    iget-object v10, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v5, v10}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 2524
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "] [onSendSessionModifyResponse] Reject it by have MA CRASH:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    return-void

    .line 2527
    .end local v9    # "audioProfile":Landroid/telecom/VideoProfile;
    :cond_2f
    sget-object v9, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v10, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v9, v10}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOn(I)Z

    move-result v9

    if-eqz v9, :cond_30

    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 2528
    invoke-virtual {v5, v9, v15}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v9

    if-nez v9, :cond_30

    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 2529
    invoke-virtual {v5, v9, v14}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v9

    if-eqz v9, :cond_33

    .line 2532
    :cond_30
    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallRat:I

    if-ne v9, v15, :cond_31

    sget-object v9, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v10, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v9, v10}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isViWifiOn(I)Z

    move-result v9

    if-nez v9, :cond_33

    .line 2533
    :cond_31
    new-instance v9, Landroid/telecom/VideoProfile;

    invoke-direct {v9, v13, v14}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 2534
    .restart local v9    # "audioProfile":Landroid/telecom/VideoProfile;
    iput-object v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 2535
    invoke-virtual {v5, v15}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 2536
    iget-object v10, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v5, v10}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 2537
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] [onSendSessionModifyResponse] Reject it by state:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    invoke-direct {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->isOP12()Z

    move-result v10

    if-eqz v10, :cond_32

    .line 2539
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "] for OP12 report event that receive a upgrade request in vilte off"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    const/16 v6, 0x1389

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2543
    :cond_32
    return-void

    .line 2548
    .end local v9    # "audioProfile":Landroid/telecom/VideoProfile;
    :cond_33
    invoke-virtual {v5, v13, v0, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v9

    .line 2550
    .local v9, "decision":I
    if-ne v15, v9, :cond_34

    .line 2552
    invoke-virtual {v5, v15}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 2553
    iget-object v6, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    goto/16 :goto_11

    .line 2555
    :cond_34
    if-nez v9, :cond_3a

    .line 2557
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitSessionOperationComplete()V

    .line 2559
    invoke-virtual {v8}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v10

    const-wide/16 v13, 0x4e20

    packed-switch v10, :pswitch_data_4

    .line 2629
    invoke-virtual {v5, v15}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 2630
    invoke-virtual {v5, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 2631
    goto/16 :goto_11

    .line 2613
    :pswitch_13
    invoke-virtual {v5, v15}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 2614
    invoke-virtual {v5, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 2617
    invoke-direct {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->isOP08()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 2618
    iget-object v6, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    invoke-virtual {v6, v12, v13, v14}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_11

    .line 2621
    :cond_35
    invoke-direct {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->isOP07()Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 2622
    iget-object v6, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x2ee0

    invoke-virtual {v6, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_11

    .line 2590
    :pswitch_14
    const-string v10, "persist.vendor.operator.optr"

    const-string v11, "OM"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "OP02"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_36

    .line 2591
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "] OP02 load, get RX session Indication, response directly"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    invoke-virtual {v5, v15}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 2593
    invoke-virtual {v5, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 2594
    goto/16 :goto_11

    .line 2597
    :cond_36
    invoke-virtual {v5, v15}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 2598
    invoke-virtual {v5, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 2601
    invoke-direct {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->isOP08()Z

    move-result v6

    if-eqz v6, :cond_37

    .line 2602
    iget-object v6, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    invoke-virtual {v6, v12, v13, v14}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_11

    .line 2605
    :cond_37
    invoke-direct {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->isOP07()Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 2606
    iget-object v6, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x2ee0

    invoke-virtual {v6, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_11

    .line 2567
    :pswitch_15
    iget-object v6, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mCurrentProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v6}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v6

    invoke-static {v6}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 2568
    invoke-virtual {v5, v15}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 2569
    invoke-virtual {v5, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 2572
    invoke-direct {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->isOP08()Z

    move-result v6

    if-eqz v6, :cond_38

    .line 2573
    iget-object v6, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    invoke-virtual {v6, v12, v13, v14}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_11

    .line 2576
    :cond_38
    invoke-direct {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->isOP07()Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 2577
    iget-object v6, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x2ee0

    invoke-virtual {v6, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_11

    .line 2582
    :cond_39
    invoke-virtual {v5, v15}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 2583
    invoke-virtual {v5, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 2585
    goto/16 :goto_11

    .line 2561
    :pswitch_16
    invoke-virtual {v5, v15}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 2562
    invoke-virtual {v5, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 2563
    const/16 v6, 0xfb9

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2564
    goto/16 :goto_11

    .line 2637
    :cond_3a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "] [onSendSessionModifyResponse] should not in this case"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    invoke-virtual {v5, v15}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 2639
    invoke-virtual {v5, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 2642
    goto/16 :goto_11

    .line 2505
    .end local v0    # "currentProfile":Landroid/telecom/VideoProfile;
    .end local v8    # "requestProfile":Landroid/telecom/VideoProfile;
    .end local v9    # "decision":I
    :sswitch_1c
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_LOCAL_BW_READY_IND"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2508
    goto/16 :goto_11

    .line 2499
    :sswitch_1d
    const-string v0, "postEventFromNative : msg = MSG_PEER_CAMERA_CLOSE"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2502
    goto/16 :goto_11

    .line 2493
    :sswitch_1e
    const-string v0, "postEventFromNative : msg = MSG_PEER_CAMERA_OPEN"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2496
    goto/16 :goto_11

    .line 2487
    :sswitch_1f
    const-string v0, "postEventFromNative : msg = MSG_START_COUNTER"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2489
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2490
    goto/16 :goto_11

    .line 2463
    :sswitch_20
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_CALL_END / SESSION_EVENT_CALL_ABNORMAL_END"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->release()V

    .line 2469
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordRemove(I)V

    .line 2470
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProvider;->updateDefaultId()V

    .line 2472
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2474
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2476
    iput v8, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 2478
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mTelephonyCallback:Lcom/mediatek/ims/internal/ImsVTProvider$ImsVTProviderTelephonyCallback;

    invoke-virtual {v0, v6}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 2479
    iput-object v11, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2480
    iput-object v11, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mTelephonyCallback:Lcom/mediatek/ims/internal/ImsVTProvider$ImsVTProviderTelephonyCallback;

    .line 2481
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2482
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mDelayMessageHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2484
    goto :goto_11

    .line 2455
    :sswitch_21
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_COMPLETE"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2459
    goto :goto_11

    .line 2448
    :sswitch_22
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_NO_I_FRAME"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2452
    goto :goto_11

    .line 2441
    :sswitch_23
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_FILESIZE"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2445
    goto :goto_11

    .line 2434
    :sswitch_24
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_DURATION"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2438
    goto :goto_11

    .line 2428
    :sswitch_25
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_UNKNOWN"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2431
    goto :goto_11

    .line 2422
    :sswitch_26
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_SNAPSHOT_DONE"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2425
    goto :goto_11

    .line 2416
    :sswitch_27
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RECEIVE_FIRSTFRAME"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2419
    nop

    .line 3233
    :cond_3b
    :goto_11
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_27
        0x3ea -> :sswitch_26
        0x3eb -> :sswitch_25
        0x3ec -> :sswitch_24
        0x3ed -> :sswitch_23
        0x3ee -> :sswitch_22
        0x3ef -> :sswitch_21
        0x3f0 -> :sswitch_20
        0x3f1 -> :sswitch_20
        0x3f2 -> :sswitch_1f
        0x3f3 -> :sswitch_1e
        0x3f4 -> :sswitch_1d
        0x3f5 -> :sswitch_1c
        0xfa1 -> :sswitch_1b
        0xfa2 -> :sswitch_1a
        0xfa3 -> :sswitch_19
        0xfa4 -> :sswitch_18
        0xfa5 -> :sswitch_17
        0xfa6 -> :sswitch_16
        0xfa8 -> :sswitch_15
        0xfaa -> :sswitch_14
        0xfab -> :sswitch_13
        0xfac -> :sswitch_13
        0xfad -> :sswitch_12
        0xfae -> :sswitch_11
        0xfaf -> :sswitch_10
        0xfb0 -> :sswitch_f
        0xfb1 -> :sswitch_e
        0xfb2 -> :sswitch_d
        0xfb3 -> :sswitch_c
        0xfb4 -> :sswitch_b
        0xfb8 -> :sswitch_a
        0xfba -> :sswitch_9
        0xfbb -> :sswitch_8
        0xfbc -> :sswitch_7
        0x1f41 -> :sswitch_6
        0x1f42 -> :sswitch_5
        0x1f43 -> :sswitch_4
        0x1f44 -> :sswitch_3
        0x1f45 -> :sswitch_2
        0x1f46 -> :sswitch_1
        0x1f47 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_12
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_11
        :pswitch_b
        :pswitch_b
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_b
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method protected static updateDefaultId()V
    .locals 2

    .line 919
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    sget v1, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordContain(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 920
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordSize()I

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordPopId()I

    move-result v0

    sput v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    .line 922
    return-void

    .line 924
    :cond_0
    const/16 v0, -0x2710

    sput v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    .line 926
    :cond_1
    return-void
.end method


# virtual methods
.method public addVideoProviderStateListener(Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;

    .line 2184
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2185
    return-void
.end method

.method public clearPauseMode()V
    .locals 2

    .line 713
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearPauseMod mPauseMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return-void
.end method

.method public doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I
    .locals 6
    .param p1, "new_action"    # I
    .param p2, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 1930
    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "ImsVT"

    if-nez p1, :cond_7

    .line 1932
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1934
    const-string v0, "doSessionModifyDecision : new_action : from APP, reject due to during roaming"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    return v1

    .line 1938
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1940
    const-string v0, "doSessionModifyDecision : new_action : from APP, reject due to during MA crash"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    return v1

    .line 1944
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1946
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1948
    const-string v0, "doSessionModifyDecision : new_action : from APP, reject due to during data off and not downgrade"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    return v1

    .line 1953
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->isDuringSessionModify()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1955
    const/4 v2, 0x0

    .line 1957
    .local v2, "isCancelUpgrade":Z
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v4

    sget-object v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->getUpgradeCancelFlag()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 1959
    const-string v4, "doSessionModifyDecision : new_action : from APP, isCancelUpgrade is true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    const/4 v2, 0x1

    .line 1963
    :cond_3
    const-string v4, "doSessionModifyDecision : new_action : from APP, reject due to during App action"

    if-eqz v2, :cond_5

    .line 1965
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1966
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    return v1

    .line 1970
    :cond_4
    const-string v1, "doSessionModifyDecision : new_action : from APP, send cancel request"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    return v0

    .line 1977
    :cond_5
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    return v1

    .line 1982
    .end local v2    # "isCancelUpgrade":Z
    :cond_6
    const-string v0, "doSessionModifyDecision : new_action : from APP, wait"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    return v2

    .line 1986
    :cond_7
    const/4 v4, 0x2

    const/4 v5, 0x3

    if-ne v1, p1, :cond_d

    .line 1988
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1990
    const-string v0, "doSessionModifyDecision : new_action : Data off, skip due to during roaming"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    return v5

    .line 1994
    :cond_8
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1996
    const-string v0, "doSessionModifyDecision : new_action : Data off, skip due to during MA crash"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    return v5

    .line 2000
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2002
    const-string v0, "doSessionModifyDecision : new_action : Data off, reject due to data off"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    return v5

    .line 2006
    :cond_a
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->isDuringSessionModify()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2008
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRequest()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2010
    const-string v0, "doSessionModifyDecision : new_action : Data off, wait for App action"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    return v2

    .line 2014
    :cond_b
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2016
    const-string v0, "doSessionModifyDecision : new_action : Data off, reject previous due to data off downgrade"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    return v4

    .line 2022
    :cond_c
    const-string v0, "doSessionModifyDecision : new_action : Data off, wait"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    return v2

    .line 2026
    :cond_d
    if-ne v4, p1, :cond_13

    .line 2028
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2030
    const-string v0, "doSessionModifyDecision : new_action : Roaming, skip due to during roaming"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    return v5

    .line 2034
    :cond_e
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2036
    const-string v0, "doSessionModifyDecision : new_action : Roaming, skip due to during MA crash"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    return v5

    .line 2040
    :cond_f
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2042
    const-string v0, "doSessionModifyDecision : new_action : Roaming, skip due to during data off"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    return v5

    .line 2046
    :cond_10
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->isDuringSessionModify()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2048
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRequest()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2050
    const-string v0, "doSessionModifyDecision : new_action : Roaming, wait for App action"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    return v2

    .line 2054
    :cond_11
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2056
    const-string v0, "doSessionModifyDecision : new_action : Roaming, reject previous due to roaming downgrade"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    return v4

    .line 2062
    :cond_12
    const-string v0, "doSessionModifyDecision : new_action : Roaming, wait"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    return v2

    .line 2066
    :cond_13
    if-ne v5, p1, :cond_19

    .line 2068
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2070
    const-string v0, "doSessionModifyDecision : new_action : MA crash, skip due to during roaming"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    return v5

    .line 2074
    :cond_14
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2076
    const-string v0, "doSessionModifyDecision : new_action : MA crash, skip due to during MA crash"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    return v5

    .line 2080
    :cond_15
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2082
    const-string v0, "doSessionModifyDecision : new_action : MA crash, skip due to during data off"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    return v5

    .line 2086
    :cond_16
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->isDuringSessionModify()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2088
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRequest()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2090
    const-string v0, "doSessionModifyDecision : new_action : MA crash, wait for App action"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    return v2

    .line 2094
    :cond_17
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2096
    const-string v0, "doSessionModifyDecision : new_action : MA crash, reject previous due to MA crash"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    return v4

    .line 2102
    :cond_18
    const-string v0, "doSessionModifyDecision : new_action : MA crash, wait"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    return v2

    .line 2106
    :cond_19
    if-ne v0, p1, :cond_1f

    .line 2108
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2110
    const-string v0, "doSessionModifyDecision : new_action : Bad bitrate, skip due to during roaming"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    return v5

    .line 2114
    :cond_1a
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2116
    const-string v0, "doSessionModifyDecision : new_action : Bad bitrate, skip due to during MA crash"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    return v5

    .line 2120
    :cond_1b
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2122
    const-string v0, "doSessionModifyDecision : new_action : Bad bitrate, skip due to data off"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    return v5

    .line 2126
    :cond_1c
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->isDuringSessionModify()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2128
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRequest()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2130
    const-string v0, "doSessionModifyDecision : new_action : Bad bitrate, wait for App action"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    return v2

    .line 2134
    :cond_1d
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2136
    const-string v0, "doSessionModifyDecision : new_action : Bad bitrate, reject previous due to data off downgrade"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    return v4

    .line 2142
    :cond_1e
    const-string v0, "doSessionModifyDecision : new_action : Bad bitrate, wait"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    return v2

    .line 2148
    :cond_1f
    const-string v0, "doSessionModifyDecision : new_action : wait"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    return v2
.end method

.method public getDataOff()Z
    .locals 1

    .line 768
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDataOff:Z

    return v0
.end method

.method public getDuringSessionRemoteRequest()Z
    .locals 1

    .line 746
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRemoteRequestOperation:Z

    return v0
.end method

.method public getDuringSessionRequest()Z
    .locals 1

    .line 734
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRequestOperation:Z

    return v0
.end method

.method public getId()I
    .locals 1

    .line 665
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    return v0
.end method

.method public getIsAudioCall()Z
    .locals 1

    .line 790
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsAudioCall:Z

    return v0
.end method

.method public getMaCrash()Z
    .locals 1

    .line 757
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsMaCrashed:Z

    return v0
.end method

.method public getRoaming()Z
    .locals 1

    .line 779
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsRoaming:Z

    return v0
.end method

.method protected getSessionModifyAction(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I
    .locals 3
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 2247
    const/4 v0, -0x1

    .line 2251
    .local v0, "result":I
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2252
    const/4 v0, 0x1

    goto :goto_0

    .line 2253
    :cond_0
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2254
    const/4 v0, 0x0

    .line 2256
    :cond_1
    :goto_0
    return v0
.end method

.method public getSimId()I
    .locals 1

    .line 676
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    return v0
.end method

.method public getSource()Lcom/mediatek/ims/internal/VTSource;
    .locals 2

    .line 899
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    if-eqz v0, :cond_0

    .line 900
    return-object v0

    .line 902
    :cond_0
    const-string v0, "ImsVT"

    const-string v1, "Get dummy vtsource"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDummySource:Lcom/mediatek/ims/internal/VTDummySource;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 680
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    return v0
.end method

.method public handleBadBitrateProcess()V
    .locals 9

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [handleBadBitrateProcess] start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [handleBadBitrateProcess] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    return-void

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCurrentProfile:Landroid/telecom/VideoProfile;

    .line 852
    .local v0, "currentProfile":Landroid/telecom/VideoProfile;
    new-instance v3, Landroid/telecom/VideoProfile;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 854
    .local v3, "reqestProfile":Landroid/telecom/VideoProfile;
    const/4 v6, 0x4

    invoke-virtual {p0, v6, v0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v6

    .line 856
    .local v6, "decision":I
    if-ne v5, v6, :cond_1

    .line 859
    new-instance v7, Landroid/telecom/VideoProfile;

    invoke-direct {v7, v4, v5}, Landroid/telecom/VideoProfile;-><init>(II)V

    move-object v5, v7

    .line 861
    .local v5, "audioResponseProfile":Landroid/telecom/VideoProfile;
    iget v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v8, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 862
    invoke-virtual {v8, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v8

    .line 861
    invoke-static {v7, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->nResponseLocalConfig(ILjava/lang/String;)I

    .line 863
    invoke-virtual {p0, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 865
    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 866
    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v7, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v7, v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 868
    .end local v5    # "audioResponseProfile":Landroid/telecom/VideoProfile;
    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    if-ne v4, v6, :cond_2

    .line 870
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] [handleBadBitrateProcess] skip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 872
    :cond_2
    if-nez v6, :cond_3

    .line 874
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitSessionOperationComplete()V

    .line 876
    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 877
    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v5, v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 880
    :cond_3
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] [handleBadBitrateProcess] Finish"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    return-void
.end method

.method public handleMaErrorProcess()V
    .locals 10

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [handleMaErrorProcess] start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [handleMaErrorProcess] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    return-void

    .line 803
    :cond_0
    new-instance v0, Landroid/telecom/VideoProfile;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 804
    .local v0, "currentProfile":Landroid/telecom/VideoProfile;
    new-instance v5, Landroid/telecom/VideoProfile;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v4}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 806
    .local v5, "reqestProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {p0, v3, v0, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v7

    .line 808
    .local v7, "decision":I
    const/4 v8, 0x1

    if-ne v8, v7, :cond_1

    .line 810
    const-string v3, "[handleMaErrorProcess] : should not in this case"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 812
    :cond_1
    if-ne v4, v7, :cond_2

    .line 815
    new-instance v3, Landroid/telecom/VideoProfile;

    invoke-direct {v3, v6, v4}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 817
    .local v3, "audioResponseProfile":Landroid/telecom/VideoProfile;
    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v9, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 818
    invoke-virtual {v9, v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v9

    .line 817
    invoke-static {v4, v9}, Lcom/mediatek/ims/internal/ImsVTProvider;->nResponseLocalConfig(ILjava/lang/String;)I

    .line 819
    invoke-virtual {p0, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 821
    invoke-virtual {p0, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->setMaCrash(Z)V

    .line 822
    iput-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 823
    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v6, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v6, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 825
    .end local v3    # "audioResponseProfile":Landroid/telecom/VideoProfile;
    goto :goto_0

    :cond_2
    if-ne v3, v7, :cond_3

    .line 827
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] [sendSessionModifyRequestByImsInternal] skip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 829
    :cond_3
    if-nez v7, :cond_4

    .line 831
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitSessionOperationComplete()V

    .line 833
    invoke-virtual {p0, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->setMaCrash(Z)V

    .line 834
    iput-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 835
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v4, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v4, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 838
    :cond_4
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] [handleMaErrorProcess] Finish"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    return-void
.end method

.method public hasPauseMode()Z
    .locals 1

    .line 722
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPauseMode(I)Z
    .locals 1
    .param p1, "mode"    # I

    .line 718
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasState(II)Z
    .locals 1
    .param p1, "state"    # I
    .param p2, "vtp_state"    # I

    .line 689
    and-int v0, p1, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isDuringNotAppDowngrade()Z
    .locals 1

    .line 2237
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2238
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2239
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2242
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 2240
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected isDuringSessionModify()Z
    .locals 1

    .line 2229
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRequest()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2232
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2230
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public notifyResume()V
    .locals 0

    .line 1896
    return-void
.end method

.method public notifyVideoPauseStateChange()V
    .locals 7

    .line 2193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [notifyVideoPauseStateChange] Start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    const/4 v0, 0x0

    .line 2197
    .local v0, "isVideoStatePause":Z
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    if-nez v3, :cond_0

    .line 2198
    const/4 v0, 0x0

    goto :goto_0

    .line 2199
    :cond_0
    const/4 v4, 0x1

    if-ne v4, v3, :cond_1

    .line 2200
    const/4 v0, 0x1

    .line 2203
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;

    .line 2204
    .local v4, "listener":Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;
    if-eqz v4, :cond_2

    .line 2205
    invoke-interface {v4, v0}, Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;->onReceivePauseState(Z)V

    .line 2206
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] [notifyVideoPauseStateChange] isVideoStatePause: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    .end local v4    # "listener":Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;
    :cond_2
    goto :goto_1

    .line 2210
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] [notifyVideoPauseStateChange] Finish"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    return-void
.end method

.method public notifyWifiUsageChange(J)V
    .locals 4
    .param p1, "usage"    # J

    .line 2216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [notifyWifiUsageChange] Start, usage : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;

    .line 2219
    .local v3, "listener":Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;
    if-eqz v3, :cond_0

    .line 2220
    invoke-interface {v3, p1, p2}, Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;->onReceiveWiFiUsage(J)V

    .line 2222
    .end local v3    # "listener":Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;
    :cond_0
    goto :goto_0

    .line 2224
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [notifyWifiUsageChange] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    return-void
.end method

.method public onError()V
    .locals 3

    .line 2156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onError] Start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleMaErrorProcess()V

    .line 2159
    const/16 v0, 0x1f43

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onError] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    return-void
.end method

.method public onOpenFail()V
    .locals 3

    .line 2176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onOpenFail] Start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onOpenFail] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    return-void
.end method

.method public onOpenSuccess()V
    .locals 3

    .line 2167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onOpenSuccess] Start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onOpenSuccess] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    return-void
.end method

.method public onReceiveCallSessionEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .line 1034
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1035
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1036
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v2, 0x2c2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1037
    return-void
.end method

.method public onRequestCallDataUsage()V
    .locals 2

    .line 990
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 991
    return-void
.end method

.method public onRequestCameraCapabilities()V
    .locals 2

    .line 986
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 987
    return-void
.end method

.method public onResetWrapper()V
    .locals 2

    .line 1018
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0x2c0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1019
    return-void
.end method

.method public onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 972
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 973
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 974
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 975
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 976
    return-void
.end method

.method public onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 980
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0x2c4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 981
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 982
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 983
    return-void
.end method

.method public onSetCamera(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 952
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 953
    return-void
.end method

.method public onSetDeviceOrientation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .line 964
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 965
    return-void
.end method

.method public onSetDisplaySurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 960
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 961
    return-void
.end method

.method public onSetPauseImage(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 994
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 995
    return-void
.end method

.method public onSetPreviewSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 956
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 957
    return-void
.end method

.method public onSetUIMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 998
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0x2bd

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 999
    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_0

    .line 1000
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDestroying:Z

    .line 1002
    :cond_0
    return-void
.end method

.method public onSetZoom(F)V
    .locals 3
    .param p1, "value"    # F

    .line 968
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 969
    return-void
.end method

.method public onStartARCall()V
    .locals 3

    .line 1040
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1041
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v2, 0x2c5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1042
    return-void
.end method

.method public onStopARCall()V
    .locals 3

    .line 1045
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1046
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v2, 0x2c6

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1047
    return-void
.end method

.method public onSwitchFeature(IZ)V
    .locals 3
    .param p1, "feature"    # I
    .param p2, "on"    # Z

    .line 1005
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1006
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1007
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1008
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v2, 0x2be

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1009
    return-void
.end method

.method public onSwitchRoaming(Z)V
    .locals 3
    .param p1, "isRoaming"    # Z

    .line 1012
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1013
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1014
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v2, 0x2bf

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1015
    return-void
.end method

.method public onUpdateCallRat(I)V
    .locals 3
    .param p1, "rat"    # I

    .line 1028
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1029
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1030
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v2, 0x2c3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1031
    return-void
.end method

.method public onUpdateProfile(I)V
    .locals 3
    .param p1, "state"    # I

    .line 1022
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1023
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1024
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v2, 0x2c1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1025
    return-void
.end method

.method public onUpdateSurfaceForARCall()V
    .locals 3

    .line 1050
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1051
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v2, 0x2c7

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1052
    return-void
.end method

.method public quitThread()V
    .locals 1

    .line 895
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 896
    return-void
.end method

.method protected reSendLastSessionModify()V
    .locals 3

    .line 2273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [reSendLastSessionModify] Profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v1}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2278
    goto :goto_0

    .line 2277
    :catch_0
    move-exception v0

    .line 2280
    :goto_0
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v1, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 2281
    return-void
.end method

.method public receiveCallSessionEventInternal(I)V
    .locals 5
    .param p1, "event"    # I

    .line 1869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [receiveCallSessionEventInternal] Start, event="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1873
    :sswitch_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->notifyResume()V

    .line 1874
    goto :goto_0

    .line 1877
    :sswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v0, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v3, v3, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    const/4 v4, 0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v0, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v3, v3, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    if-eq v0, v3, :cond_1

    .line 1879
    :cond_0
    const-string v0, "mCallConnected, and preview size changed, notify camera cap with new size"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mHasRequestCamCap:Z

    if-ne v4, v0, :cond_1

    .line 1881
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->onRequestCameraCapabilities()V

    .line 1884
    :cond_1
    iput-boolean v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallConnected:Z

    .line 1885
    nop

    .line 1891
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [receiveCallSessionEventInternal] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0x84 -> :sswitch_0
    .end sparse-switch
.end method

.method public receiveSessionModifyResponseInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 1454
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1456
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1457
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->setState(I)V

    .line 1458
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setMaCrash(Z)V

    .line 1461
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 1462
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    .line 1463
    .local v0, "responseState":I
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    sget-object v3, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    .line 1464
    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOn(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1465
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->setState(I)V

    goto :goto_0

    .line 1467
    :cond_2
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->resetState(I)V

    .line 1469
    :goto_0
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDataOff(Z)V

    .line 1472
    .end local v0    # "responseState":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1473
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->setState(I)V

    .line 1474
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setRoaming(Z)V

    .line 1477
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRequest()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1478
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRequest(Z)V

    .line 1482
    :cond_5
    if-ne p1, v2, :cond_7

    .line 1483
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1484
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->setIsAudioCall(Z)V

    goto :goto_1

    .line 1486
    :cond_6
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setIsAudioCall(Z)V

    .line 1489
    :cond_7
    :goto_1
    return-void
.end method

.method public rejectSessionModifyInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 1493
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1494
    return-void
.end method

.method public removeVideoProviderStateListener(Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;

    .line 2188
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2189
    return-void
.end method

.method public requestCallDataUsageInternal()V
    .locals 4

    .line 1551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onRequestCallDataUsage] Start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1555
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 1556
    return-void

    .line 1559
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUsager:Lcom/mediatek/ims/internal/ImsVTUsageManager;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->requestCallDataUsage()Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    move-result-object v0

    .line 1561
    .local v0, "usage":Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    if-eqz v0, :cond_1

    .line 1562
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->changeCallDataUsage(J)V

    .line 1563
    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->notifyWifiUsageChange(J)V

    .line 1565
    :cond_1
    return-void
.end method

.method public requestCameraCapabilitiesInternal()V
    .locals 9

    .line 1498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onRequestCameraCapabilities] Start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1502
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1503
    return-void

    .line 1506
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1507
    const-string v0, "onRequestCameraCapabilities: not set camera yet"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    return-void

    .line 1511
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1512
    .local v0, "zoom_max":F
    const/4 v3, 0x0

    .line 1514
    .local v3, "zoom_support":Z
    iget-object v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v4}, Lcom/mediatek/ims/internal/VTSource;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 1515
    .local v4, "camera_cs":Landroid/hardware/camera2/CameraCharacteristics;
    if-nez v4, :cond_2

    .line 1516
    const-string v5, "onRequestCameraCapabilities: camera_cs null! Use default value."

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1518
    :cond_2
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1520
    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v0, v5

    const/4 v6, 0x1

    if-lez v5, :cond_3

    move v5, v6

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    move v3, v5

    .line 1522
    iget-boolean v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallConnected:Z

    if-nez v5, :cond_4

    .line 1523
    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    iput v7, v5, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    .line 1524
    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    iput v7, v5, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    goto :goto_2

    .line 1526
    :cond_4
    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v5, v5, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    if-ne v5, v7, :cond_5

    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v5, v5, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    if-eq v5, v7, :cond_6

    .line 1528
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] preview size changed, need update preview surface"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/VTSource;->setForceUpdateSurface(Z)V

    .line 1531
    :cond_6
    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    iput v7, v5, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    .line 1532
    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    iput v7, v5, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    .line 1535
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] [onRequestCameraCapabilities] Width: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " Height: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " zoom_support: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " zoom_max: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    new-instance v5, Landroid/telecom/VideoProfile$CameraCapabilities;

    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    iget-object v8, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v8, v8, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    invoke-direct {v5, v7, v8, v3, v0}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(IIZF)V

    .line 1542
    .local v5, "camCap":Landroid/telecom/VideoProfile$CameraCapabilities;
    invoke-virtual {p0, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    .line 1544
    iput-boolean v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mHasRequestCamCap:Z

    .line 1546
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "] [onRequestCameraCapabilities] Finish"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    return-void
.end method

.method public resetPauseMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetPauseMode old mPauseMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    not-int v2, p1

    and-int/2addr v0, v2

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetPauseMode new mPauseMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    return-void
.end method

.method public resetState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetState old mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    not-int v2, p1

    and-int/2addr v0, v2

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetState new mState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    return-void
.end method

.method public resetWrapperInternal()V
    .locals 4

    .line 1840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onResetWrapper] Start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1844
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1845
    return-void

    .line 1848
    :cond_0
    const/4 v3, 0x1

    if-ne v3, v0, :cond_1

    .line 1849
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->setUIModeInternal(IZ)V

    .line 1852
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onResetWrapper] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    return-void
.end method

.method protected sendFgBgSessionModifyRequestInternal(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;IZ)V
    .locals 0
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "mode"    # I
    .param p4, "needNotify"    # Z

    .line 1366
    invoke-virtual {p0, p3, p4}, Lcom/mediatek/ims/internal/ImsVTProvider;->setUIModeInternal(IZ)V

    .line 1367
    return-void
.end method

.method public sendRejectUpgradeResponseInternal()V
    .locals 2

    .line 2297
    const-string v0, "ImsVT"

    const-string v1, "auto reject the video upgrade request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCurrentProfile:Landroid/telecom/VideoProfile;

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 2299
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->sendSessionModifyResponseInternal(Landroid/telecom/VideoProfile;)V

    .line 2300
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v0, v1, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponseInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 2304
    return-void
.end method

.method public sendSessionModifyRequestByImsInternal(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 11
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 1371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [sendSessionModifyRequestByImsInternal] Start, fromProfile:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1372
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", toProfile:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1371
    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [sendSessionModifyRequestByImsInternal] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    return-void

    .line 1379
    :cond_0
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    .line 1380
    .local v0, "newState":I
    sget-object v3, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->getRealRequest(I)I

    move-result v3

    .line 1382
    .local v3, "realNewState":I
    new-instance v4, Landroid/telecom/VideoProfile;

    .line 1384
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v5

    invoke-direct {v4, v3, v5}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 1386
    .local v4, "newToProfile":Landroid/telecom/VideoProfile;
    const/4 v5, 0x1

    invoke-virtual {p0, v5, p1, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v6

    .line 1388
    .local v6, "decision":I
    const/4 v7, 0x2

    if-ne v7, v6, :cond_1

    .line 1390
    new-instance v8, Landroid/telecom/VideoProfile;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v7}, Landroid/telecom/VideoProfile;-><init>(II)V

    move-object v7, v8

    .line 1392
    .local v7, "audioResponseProfile":Landroid/telecom/VideoProfile;
    iget v8, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v10, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v10, v7}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/mediatek/ims/internal/ImsVTProvider;->nResponseLocalConfig(ILjava/lang/String;)I

    .line 1393
    invoke-virtual {p0, v9}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 1395
    invoke-virtual {p0, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDataOff(Z)V

    .line 1396
    iput-object v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1397
    iget v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v8, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v8, v4}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 1399
    .end local v7    # "audioResponseProfile":Landroid/telecom/VideoProfile;
    goto :goto_0

    :cond_1
    const/4 v7, 0x3

    if-ne v7, v6, :cond_2

    .line 1401
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] [sendSessionModifyRequestByImsInternal] skip"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1403
    :cond_2
    if-nez v6, :cond_3

    .line 1405
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitSessionOperationComplete()V

    .line 1407
    invoke-virtual {p0, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDataOff(Z)V

    .line 1408
    iput-object v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1409
    iget v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v7, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v7, v4}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    goto :goto_0

    .line 1413
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] [sendSessionModifyRequestByImsInternal] should not in this case"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "] [onSendSessionModifyRequest] Finish"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    return-void
.end method

.method public sendSessionModifyRequestInternal(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 8
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 1274
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v0

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->isImsFwkRequest(I)Z

    move-result v0

    const-string v1, "[ID="

    const-string v2, "ImsVT"

    if-eqz v0, :cond_0

    .line 1276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSendSessionModifyRequest] requst from IMS FWK, swith handle function"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ims/internal/ImsVTProvider;->sendSessionModifyRequestByImsInternal(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1279
    return-void

    .line 1282
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] [onSendSessionModifyRequest] Start, fromProfile:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1283
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", toProfile:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1282
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1287
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_1

    .line 1288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSendSessionModifyRequest] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    return-void

    .line 1292
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSessionModifyAction(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v0

    .line 1293
    .local v0, "mode":I
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v0, v3, :cond_2

    .line 1294
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/internal/ImsVTProvider;->IsCallModeChanged(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1295
    invoke-virtual {p0, p1, p2, v0, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->sendFgBgSessionModifyRequestInternal(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;IZ)V

    .line 1296
    return-void

    .line 1299
    :cond_2
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v3

    invoke-static {v3}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v3

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-eqz v3, :cond_6

    .line 1300
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {p0, v3, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1303
    invoke-virtual {p0, v6, p2, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->rejectSessionModifyInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] [onSendSessionModifyRequest] Reject it by have MA CRASH:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    return-void

    .line 1310
    :cond_3
    sget-object v3, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v3, v7}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOn(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 1311
    invoke-virtual {p0, v3, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 1312
    invoke-virtual {p0, v3, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1315
    :cond_4
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallRat:I

    if-ne v3, v4, :cond_5

    sget-object v3, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v3, v7}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isViWifiOn(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1316
    :cond_5
    invoke-virtual {p0, v6, p2, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->rejectSessionModifyInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] [onSendSessionModifyRequest] Reject it by state:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    return-void

    .line 1326
    :cond_6
    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1, p2}, Lcom/mediatek/ims/internal/ImsVTProvider;->doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v3

    .line 1328
    .local v3, "decision":I
    if-ne v4, v3, :cond_7

    .line 1330
    invoke-virtual {p0, v6, p2, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->rejectSessionModifyInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 1335
    :cond_7
    if-ne v5, v3, :cond_8

    .line 1337
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] [onSendSessionModifyRequest] send request immediately"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    invoke-virtual {p0, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRequest(Z)V

    .line 1339
    iput-object p2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1340
    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v5, p2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    goto :goto_0

    .line 1342
    :cond_8
    if-nez v3, :cond_9

    .line 1344
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitSessionOperationComplete()V

    .line 1346
    invoke-virtual {p0, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRequest(Z)V

    .line 1347
    iput-object p2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1348
    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v5, p2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    goto :goto_0

    .line 1352
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] [onSendSessionModifyRequest] should not in this case"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    invoke-virtual {p0, v6, p2, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->rejectSessionModifyInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1361
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] [onSendSessionModifyRequest] Finish"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    return-void
.end method

.method public sendSessionModifyResponseInternal(Landroid/telecom/VideoProfile;)V
    .locals 5
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 1422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onSendSessionModifyResponse] Start, responseProfile:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1423
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1422
    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1427
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSendSessionModifyResponse] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    return-void

    .line 1432
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 1433
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v4, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v4, p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->nResponseLocalConfig(ILjava/lang/String;)I

    .line 1434
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1435
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->setIsAudioCall(Z)V

    goto :goto_0

    .line 1437
    :cond_1
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->setIsAudioCall(Z)V

    goto :goto_0

    .line 1444
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "] [onSendSessionModifyResponse] Already response, skip it"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    :goto_0
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 1449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSendSessionModifyResponse] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    return-void
.end method

.method public setCameraInternal(Ljava/lang/String;)V
    .locals 7
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onSetCamera] id : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1060
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1061
    return-void

    .line 1065
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDestroying:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSetCamera] UI mode is destroying"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    return-void

    .line 1070
    :cond_1
    const/4 v0, 0x0

    .line 1072
    .local v0, "count":I
    const/4 v3, 0x0

    if-nez p1, :cond_2

    .line 1073
    iput-boolean v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mHasRequestCamCap:Z

    .line 1077
    :cond_2
    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkSource:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    if-eqz p1, :cond_3

    .line 1078
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mARCallCameraId:Ljava/lang/String;

    .line 1079
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] [onSetCamera] in AR call, no need open camera, just set mARCallCameraId and tell MA camera id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCamera(II)I

    .line 1081
    return-void

    .line 1084
    :cond_3
    const-string v5, "screen"

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1085
    iput v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkSource:I

    .line 1086
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetUIMode(II)I

    .line 1087
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] exit pause image mode when set camera"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_4
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/4 v4, 0x2

    if-ne v3, v6, :cond_6

    .line 1091
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkSource:I

    if-ne v3, v4, :cond_5

    if-eqz p1, :cond_5

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1093
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->stopScreenRecordingInternal()V

    .line 1094
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] [onSetCamera] allow to stop screenshare in BG, camera:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    return-void

    .line 1097
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] [onSetCamera] onSetCamera, not set camera when in BG, only save id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1101
    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]switch screen share, close camera firstly"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/VTSource;->close()V

    .line 1104
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    .line 1105
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->startScreenRecordingInternal()V

    .line 1106
    return-void

    .line 1108
    :cond_7
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkSource:I

    if-ne v3, v4, :cond_8

    if-eqz p1, :cond_8

    .line 1109
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]in screen recording mode, stop recording"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->stopScreenRecordingInternal()V

    .line 1114
    :cond_8
    if-eqz p1, :cond_d

    .line 1118
    :goto_0
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkState:I

    if-ne v3, v4, :cond_a

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasPauseMode(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1120
    const/16 v3, 0xa

    if-ge v0, v3, :cond_9

    .line 1121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] [onSetCamera] onSetCamera, Call hold or held, wait and retry"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    const-wide/16 v5, 0xc8

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1149
    goto :goto_1

    .line 1148
    :catch_0
    move-exception v3

    .line 1150
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1126
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] [onSetCamera] onSetCamera, Call hold or held, ignore setCamera"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    const/16 v1, 0x1f46

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1128
    return-void

    .line 1131
    :cond_a
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkState:I

    if-eqz v3, :cond_b

    const/4 v4, 0x4

    if-ne v3, v4, :cond_c

    :cond_b
    if-lez v0, :cond_c

    .line 1133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] [onSetCamera] onSetCamera, recording stopped"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    return-void

    .line 1138
    :cond_c
    sget-object v3, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->updateCameraUsage(I)V

    .line 1141
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v3, p1}, Lcom/mediatek/ims/internal/VTSource;->open(Ljava/lang/String;)V

    .line 1142
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCamera(II)I

    .line 1143
    goto :goto_2

    .line 1154
    :cond_d
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v3}, Lcom/mediatek/ims/internal/VTSource;->close()V

    .line 1157
    :goto_2
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    .line 1159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] [onSetCamera] Finish"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    return-void
.end method

.method public setDataOff(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 762
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDataOff:Z

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataOff : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDataOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    return-void
.end method

.method public setDeviceOrientationInternal(I)V
    .locals 6
    .param p1, "rotation"    # I

    .line 1231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onSetDeviceOrientation] Start, rotation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSetDeviceOrientation] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    return-void

    .line 1238
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1240
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientation:I

    if-eq v0, p1, :cond_1

    .line 1242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] [onSetDeviceOrientation] device orientation change from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientation:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientation:I

    .line 1246
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1248
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientationRunnable:Ljava/lang/Runnable;

    .line 1249
    const-string v4, "persist.vendor.vt.rotate_delay"

    const/16 v5, 0x1f4

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-long v4, v4

    .line 1248
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1252
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSetDeviceOrientation] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    return-void
.end method

.method public setDisplaySurfaceInternal(Landroid/view/Surface;)V
    .locals 7
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onSetDisplaySurface] Start, surface: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1196
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSetDisplaySurface] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    return-void

    .line 1201
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOriginalDisplaySurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSetDisplaySurface] mOriginalDisplaySurface and surface is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    return-void

    .line 1207
    :cond_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1208
    invoke-virtual {v0}, Landroid/view/Surface;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1209
    .local v0, "oriSurfaceToken":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/Surface;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1210
    .local v3, "newSurfaceToken":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] [onSetDisplaySurface] oriSurfaceToken[1]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v6, v0, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", newSurfaceToken[1]:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, v3, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    aget-object v4, v3, v5

    if-eqz v4, :cond_2

    aget-object v4, v0, v5

    if-eqz v4, :cond_2

    aget-object v4, v3, v5

    aget-object v5, v0, v5

    .line 1214
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] [onSetDisplaySurface] surface not changed and no need to update, ignore!"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    return-void

    .line 1221
    .end local v0    # "oriSurfaceToken":[Ljava/lang/String;
    .end local v3    # "newSurfaceToken":[Ljava/lang/String;
    :cond_2
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOriginalDisplaySurface:Landroid/view/Surface;

    .line 1223
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetDisplaySurface(ILandroid/view/Surface;)I

    .line 1225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSetDisplaySurface] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    return-void
.end method

.method public setDuringSessionRemoteRequest(Z)V
    .locals 4
    .param p1, "b"    # Z

    .line 739
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSessionOperationFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 740
    :try_start_0
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRemoteRequestOperation:Z

    .line 741
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDuringSessionRemoteRequest : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRemoteRequestOperation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    monitor-exit v0

    .line 743
    return-void

    .line 742
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDuringSessionRequest(Z)V
    .locals 4
    .param p1, "b"    # Z

    .line 727
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSessionOperationFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 728
    :try_start_0
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRequestOperation:Z

    .line 729
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDuringSessionRequest : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRequestOperation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    monitor-exit v0

    .line 731
    return-void

    .line 730
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setId(I)V
    .locals 2
    .param p1, "id"    # I

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setId id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    .line 657
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUsager:Lcom/mediatek/ims/internal/ImsVTUsageManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->setId(I)V

    .line 659
    sget v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 660
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sput v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    .line 662
    :cond_0
    return-void
.end method

.method public setIsAudioCall(Z)V
    .locals 2
    .param p1, "result"    # Z

    .line 784
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsAudioCall:Z

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsAudioCall : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsAudioCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    return-void
.end method

.method public setMaCrash(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 751
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsMaCrashed:Z

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMaCrash : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsMaCrashed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    return-void
.end method

.method public setPauseImageInternal(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onSetPauseImage] Start, uri: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1573
    if-nez p1, :cond_0

    .line 1574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSetPauseImage] uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", return"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    return-void

    .line 1578
    :cond_0
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_1

    .line 1579
    return-void

    .line 1582
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] camera not closed, return"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    return-void

    .line 1587
    :cond_2
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkSource:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 1588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] enter image mode from screen mode, stop screen recording fistly"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->stopScreenRecording()V

    .line 1592
    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkSource:I

    .line 1594
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    const/4 v3, 0x4

    invoke-static {v0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetUIMode(II)I

    .line 1595
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/VTSource;->setPauseImage(Landroid/net/Uri;)V

    .line 1597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSetPauseImage] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    return-void
.end method

.method public setPauseMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 702
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPauseMode mPauseMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    return-void
.end method

.method public setPreviewSurfaceInternal(Landroid/view/Surface;)V
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onSetPreviewSurface] Start, surface: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1169
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSetPreviewSurface] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    return-void

    .line 1174
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOriginalPreviewSurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSetPreviewSurface] mOriginalPreviewSurface and surface is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    return-void

    .line 1180
    :cond_1
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOriginalPreviewSurface:Landroid/view/Surface;

    .line 1182
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/VTSource;->setPreviewSurface(Landroid/view/Surface;)V

    .line 1184
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetPreviewSurface(ILandroid/view/Surface;)I

    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSetPreviewSurface] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    return-void
.end method

.method public setRoaming(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 773
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsRoaming:Z

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRoaming : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    return-void
.end method

.method public setSimId(I)V
    .locals 2
    .param p1, "simid"    # I

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSimId mSimId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    .line 672
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUsager:Lcom/mediatek/ims/internal/ImsVTUsageManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->setSimId(I)V

    .line 673
    return-void
.end method

.method public setState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 684
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    return-void
.end method

.method public setUIModeInternal(IZ)V
    .locals 7
    .param p1, "mode"    # I
    .param p2, "needNotify"    # Z

    .line 1645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onSetUIMode] Start, mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSetUIMode] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    return-void

    .line 1652
    :cond_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1737
    :sswitch_0
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInitComplete:Z

    if-ne v5, v0, :cond_1

    .line 1738
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->requestCallDataUsageInternal()V

    .line 1741
    :cond_1
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 1742
    iput-boolean v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDestroying:Z

    .line 1743
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->nFinalization(I)I

    .line 1745
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->quitThread()V

    .line 1746
    goto/16 :goto_1

    .line 1701
    :sswitch_1
    if-eq v0, v3, :cond_3

    .line 1702
    iput v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 1704
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkSource:I

    if-ne v0, v4, :cond_2

    .line 1705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]if downgrade in screen sharing, stop screen recording"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->stopScreenRecording()V

    .line 1708
    :cond_2
    iput v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkSource:I

    .line 1711
    :cond_3
    iput-boolean v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDuringResetMode:Z

    .line 1712
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/mediatek/ims/internal/ImsVTProvider$4;

    invoke-direct {v3, p0}, Lcom/mediatek/ims/internal/ImsVTProvider$4;-><init>(Lcom/mediatek/ims/internal/ImsVTProvider;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1725
    .local v0, "resetModeRecoverThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1727
    if-eqz p2, :cond_a

    .line 1728
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->notifyVideoPauseStateChange()V

    goto/16 :goto_1

    .line 1683
    .end local v0    # "resetModeRecoverThread":Ljava/lang/Thread;
    :sswitch_2
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDuringResetMode:Z

    if-eqz v0, :cond_4

    .line 1684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] [onSetUIMode] reset mode (voice call) should not recv BG, skip"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    goto/16 :goto_1

    .line 1688
    :cond_4
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 1689
    if-eqz p2, :cond_5

    .line 1690
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->notifyVideoPauseStateChange()V

    .line 1694
    :cond_5
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->close()V

    .line 1696
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetUIMode(II)I

    .line 1697
    goto/16 :goto_1

    .line 1654
    :sswitch_3
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 1655
    if-eqz p2, :cond_6

    .line 1656
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->notifyVideoPauseStateChange()V

    .line 1659
    :cond_6
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1660
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkSource:I

    if-ne v0, v4, :cond_7

    .line 1661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] in screen sharing, only setUIMode "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetUIMode(II)I

    .line 1663
    goto :goto_1

    .line 1666
    :cond_7
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->updateCameraUsage(I)V

    .line 1669
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkSource:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_8

    .line 1670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] in AR call, only setUIMode "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1672
    :cond_8
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/mediatek/ims/internal/VTSource;->open(Ljava/lang/String;)V

    .line 1673
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCamera(II)I

    goto :goto_0

    .line 1676
    :cond_9
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->close()V

    .line 1679
    :goto_0
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetUIMode(II)I

    .line 1680
    nop

    .line 1752
    :cond_a
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSetUIMode] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_2
        0xa -> :sswitch_1
        0x10000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setZoomInternal(F)V
    .locals 4
    .param p1, "value"    # F

    .line 1258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onSetZoom] Start, value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1262
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1263
    return-void

    .line 1266
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/VTSource;->setZoom(F)V

    .line 1268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSetZoom] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    return-void
.end method

.method public startARCallInternal()V
    .locals 3

    .line 2313
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    const-string v1, "ImsVT"

    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2317
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mARCallCameraId:Ljava/lang/String;

    .line 2321
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->setCameraInternal(Ljava/lang/String;)V

    .line 2322
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkSource:I

    .line 2328
    :try_start_0
    new-instance v0, Lcom/newcalllib/arcall/ImsARCallParams;

    invoke-direct {v0}, Lcom/newcalllib/arcall/ImsARCallParams;-><init>()V

    .line 2329
    .local v0, "ARParams":Lcom/newcalllib/arcall/ImsARCallParams;
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v2, v2, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    iput v2, v0, Lcom/newcalllib/arcall/ImsARCallParams;->width:I

    .line 2330
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v2, v2, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    iput v2, v0, Lcom/newcalllib/arcall/ImsARCallParams;->height:I

    .line 2331
    const/16 v2, 0x1e

    iput v2, v0, Lcom/newcalllib/arcall/ImsARCallParams;->fps:I

    .line 2333
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getARCallListener()Lcom/newcalllib/arcall/IImsARCallListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/newcalllib/arcall/IImsARCallListener;->onARCallParamsUpdate(Lcom/newcalllib/arcall/ImsARCallParams;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2337
    .end local v0    # "ARParams":Lcom/newcalllib/arcall/ImsARCallParams;
    goto :goto_0

    .line 2334
    :catch_0
    move-exception v0

    .line 2335
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "startARCallInternal exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2336
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2339
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/16 v0, 0x138b

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2340
    return-void

    .line 2314
    :cond_1
    :goto_1
    const-string v0, "no camera opened, error"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    return-void
.end method

.method public startRegisterTelephonyCallback(I)V
    .locals 5
    .param p1, "simId"    # I

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRegisterTelephonyCallback simId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProvider$ImsVTProviderTelephonyCallback;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/ImsVTProvider$ImsVTProviderTelephonyCallback;-><init>(Lcom/mediatek/ims/internal/ImsVTProvider;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mTelephonyCallback:Lcom/mediatek/ims/internal/ImsVTProvider$ImsVTProviderTelephonyCallback;

    .line 645
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v0, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 647
    invoke-static {p1}, Lcom/mediatek/ims/common/SubscriptionManagerHelper;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 648
    .local v0, "subId":I
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 649
    .local v1, "stm":Landroid/telephony/TelephonyManager;
    new-instance v2, Landroid/os/HandlerExecutor;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mTelephonyCallback:Lcom/mediatek/ims/internal/ImsVTProvider$ImsVTProviderTelephonyCallback;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 650
    return-void
.end method

.method public startScreenRecordingInternal()V
    .locals 4

    .line 1602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [startScreenRecording] Start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1606
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1607
    return-void

    .line 1610
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] camera not closed, return"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    return-void

    .line 1615
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkSource:I

    .line 1617
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    const/4 v3, 0x6

    invoke-static {v0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetUIMode(II)I

    .line 1618
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->startScreenRecording()V

    .line 1620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [startScreenRecording] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    return-void
.end method

.method public stopARCallInternal()V
    .locals 5

    .line 2343
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkSource:I

    const/4 v1, 0x3

    const/16 v2, 0x138c

    const-string v3, "ImsVT"

    const/4 v4, 0x0

    if-eq v0, v1, :cond_0

    .line 2344
    const-string v0, "not in AR mode, maybe downgrade already, nothing to stop, just clear flag"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2346
    iput-object v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mARCallCameraId:Ljava/lang/String;

    .line 2347
    iput-object v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mARCallRecordSurface:Landroid/view/Surface;

    .line 2348
    return-void

    .line 2351
    :cond_0
    const-string v0, "restart MA before open camera when stop AR call, becasue source image fomat changed."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetUIMode(II)I

    .line 2359
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2361
    goto :goto_0

    .line 2360
    :catch_0
    move-exception v0

    .line 2362
    :goto_0
    const-string v0, "wait 200ms for SDK to disconnect bufferqueue producer"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2367
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkSource:I

    .line 2368
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mARCallCameraId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->setCameraInternal(Ljava/lang/String;)V

    .line 2369
    iput-object v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mARCallCameraId:Ljava/lang/String;

    .line 2370
    iput-object v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mARCallRecordSurface:Landroid/view/Surface;

    .line 2371
    return-void
.end method

.method public stopScreenRecordingInternal()V
    .locals 4

    .line 1625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [stopScreenRecordingInternal] Start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1629
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1630
    return-void

    .line 1633
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkSource:I

    .line 1635
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->stopScreenRecording()V

    .line 1636
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    const/4 v3, 0x7

    invoke-static {v0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetUIMode(II)I

    .line 1638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [stopScreenRecordingInternal] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    return-void
.end method

.method public switchFeatureInternal(IZ)V
    .locals 4
    .param p1, "feature"    # I
    .param p2, "on"    # Z

    .line 1757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onSwitchFeature] Start, feature: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", on: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1761
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1762
    return-void

    .line 1765
    :cond_0
    if-eqz p2, :cond_1

    .line 1766
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    const/4 v3, 0x1

    invoke-static {v0, p1, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSwitchFeature(III)I

    .line 1767
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->resetState(I)V

    goto :goto_0

    .line 1770
    :cond_1
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    const/4 v3, 0x0

    invoke-static {v0, p1, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSwitchFeature(III)I

    .line 1773
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSwitchFeature] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    return-void
.end method

.method public switchRoamingInternal(Z)V
    .locals 8
    .param p1, "isRoaming"    # Z

    .line 1778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onSwitchRoaming] Start, phoneId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", on: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1783
    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 1785
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->resetState(I)V

    goto :goto_0

    .line 1789
    :cond_0
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v4, 0x10000

    if-ne v3, v4, :cond_1

    .line 1790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSwitchRoaming] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    return-void

    .line 1795
    :cond_1
    new-instance v3, Landroid/telecom/VideoProfile;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v0}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 1796
    .local v3, "currentProfile":Landroid/telecom/VideoProfile;
    new-instance v5, Landroid/telecom/VideoProfile;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v0}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 1798
    .local v5, "reqestProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {p0, v0, v3, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v6

    .line 1800
    .local v6, "decision":I
    const/4 v7, 0x1

    if-ne v7, v6, :cond_2

    .line 1802
    const-string v0, "onSwitchRoaming() : should not in this case"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    return-void

    .line 1805
    :cond_2
    if-ne v0, v6, :cond_3

    .line 1807
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v0, v1, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponseInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1812
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->setRoaming(Z)V

    .line 1813
    iput-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1814
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v1, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v1, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 1816
    return-void

    .line 1818
    :cond_3
    if-ne v4, v6, :cond_4

    .line 1820
    return-void

    .line 1822
    :cond_4
    if-nez v6, :cond_5

    .line 1824
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitSessionOperationComplete()V

    .line 1826
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->setRoaming(Z)V

    .line 1827
    iput-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1828
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v4, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v4, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 1830
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->setRoaming(Z)V

    .line 1834
    .end local v3    # "currentProfile":Landroid/telecom/VideoProfile;
    .end local v5    # "reqestProfile":Landroid/telecom/VideoProfile;
    .end local v6    # "decision":I
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSwitchRoaming] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    return-void
.end method

.method public upateSurfaceForARCallInternal()V
    .locals 5

    .line 2375
    const-string v0, "restart MA before provide surface, becasue source image fomat changed."

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetUIMode(II)I

    .line 2379
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->getCachedPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    .line 2380
    .local v0, "PreviewSurface":Landroid/view/Surface;
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getARCallListener()Lcom/newcalllib/arcall/IImsARCallListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/newcalllib/arcall/IImsARCallListener;->onGetSurfacePreview(Landroid/view/Surface;)V

    .line 2382
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mARCallRecordSurface:Landroid/view/Surface;

    if-eqz v2, :cond_0

    .line 2383
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getARCallListener()Lcom/newcalllib/arcall/IImsARCallListener;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mARCallRecordSurface:Landroid/view/Surface;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/newcalllib/arcall/IImsARCallListener;->onGetSurface(Landroid/view/Surface;I)V

    goto :goto_0

    .line 2385
    :cond_0
    const-string v2, "mARCallRecordSurface is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2390
    .end local v0    # "PreviewSurface":Landroid/view/Surface;
    :goto_0
    goto :goto_1

    .line 2387
    :catch_0
    move-exception v0

    .line 2388
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "upateSurfaceForARCallInternal exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2389
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2391
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public updateCallRatInternal(I)V
    .locals 3
    .param p1, "callRat"    # I

    .line 1899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [updateCallRatInternal] Start, callRat="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallRat:I

    .line 1901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [updateCallRatInternal] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    return-void
.end method

.method public updateProfileInternal(I)V
    .locals 4
    .param p1, "state"    # I

    .line 1858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [updateCurrentProfile] Start, state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    new-instance v0, Landroid/telecom/VideoProfile;

    const/4 v3, 0x2

    invoke-direct {v0, p1, v3}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 1861
    .local v0, "newVideoprofile":Landroid/telecom/VideoProfile;
    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCurrentProfile:Landroid/telecom/VideoProfile;

    .line 1863
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] [updateCurrentProfile] Finish"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    return-void
.end method

.method public waitInitComplete()V
    .locals 2

    .line 908
    nop

    :goto_0
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInitComplete:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_0

    .line 910
    :try_start_0
    const-string v0, "ImsVT"

    const-string v1, "Wait for initialization complete!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 912
    :catch_0
    move-exception v0

    .line 913
    :goto_1
    goto :goto_0

    .line 915
    :cond_0
    return-void
.end method

.method public waitSessionOperationComplete()V
    .locals 2

    .line 885
    nop

    :goto_0
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRequestOperation:Z

    const/4 v1, 0x1

    if-eq v1, v0, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRemoteRequestOperation:Z

    if-ne v1, v0, :cond_0

    goto :goto_1

    .line 892
    :cond_0
    return-void

    .line 887
    :cond_1
    :goto_1
    :try_start_0
    const-string v0, "ImsVT"

    const-string v1, "Wait for Session operation complete!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 889
    :catch_0
    move-exception v0

    .line 890
    :goto_2
    goto :goto_0
.end method
