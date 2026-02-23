.class public Lcom/mediatek/ims/internal/ImsVTProviderUtil;
.super Ljava/lang/Object;
.source "ImsVTProviderUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;,
        Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;,
        Lcom/mediatek/ims/internal/ImsVTProviderUtil$NetworkAvailableCallback;,
        Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTOemServiceImpl;,
        Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsARCallServiceImpl;,
        Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;
    }
.end annotation


# static fields
.field private static final AR_CALL_SERVICE:Ljava/lang/String; = "IImsARCallService"

.field public static final CALL_RAT_LTE:I = 0x0

.field public static final CALL_RAT_NR:I = 0x2

.field public static final CALL_RAT_WIFI:I = 0x1

.field private static final EXTRA_PHONE_ID:Ljava/lang/String; = "phone_id"

.field private static GET_CAMERA_TRY_BOOT_COMPLETE:I = 0x0

.field public static final HIDE_ME_TYPE_DISABLE:I = 0x1

.field public static final HIDE_ME_TYPE_FREEZE:I = 0x2

.field public static final HIDE_ME_TYPE_NONE:I = 0x0

.field public static final HIDE_ME_TYPE_PICTURE:I = 0x3

.field public static final HIDE_YOU_TYPE_DISABLE:I = 0x0

.field public static final HIDE_YOU_TYPE_ENABLE:I = 0x1

.field private static final MSG_BIND:I = 0x2

.field private static final MSG_INIT_REFVTP:I = 0x1

.field private static final MSG_NOTIFY_BOOT_COMPLETE:I = 0x8

.field private static final MSG_REINIT_REFVTP:I = 0x6

.field private static final MSG_RESET_WRAPPER:I = 0x5

.field private static final MSG_SETUIMODE:I = 0x3

.field private static final MSG_SWITCH_FEATURE:I = 0x4

.field private static final MSG_TRIGGER_OPERATOR_ID:I = 0x7

.field private static final PROPERTY_CAMERA_ROTATE:Ljava/lang/String; = "persist.vendor.vt.camera.rotate"

.field private static final PROPERTY_FPS:Ljava/lang/String; = "persist.vendor.vt.vfps"

.field public static final PROPERTY_MAX_DRAM_SIZE:Ljava/lang/String; = "ro.vendor.mtk_config_max_dram_size"

.field private static final PROPERTY_NO_CAMERA_MODE:Ljava/lang/String; = "persist.vendor.vt.no_camera_mode"

.field public static final PROPERTY_RIL_ICCID_SIM:Ljava/lang/String; = "vendor.ril.iccid.sim"

.field public static final PROPERTY_TEL_LOG:Ljava/lang/String; = "persist.log.tag.tel_dbg"

.field private static final PROPERTY_VILTE_ENABLE:Ljava/lang/String; = "persist.vendor.mtk.vilte.enable"

.field private static final PROPERTY_VIWIFI_ENABLE:Ljava/lang/String; = "persist.vendor.mtk.viwifi.enable"

.field private static final SIM_NUM:I

.field public static final SOURCE_ARSDK:I = 0x3

.field public static final SOURCE_CAMERA:I = 0x0

.field public static final SOURCE_PICTURE:I = 0x1

.field public static final SOURCE_SCREEN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ImsVT Util"

.field public static final TAG_VILTE_MOBILE:I = -0x1000000

.field public static final TAG_VILTE_WIFI:I = -0xf00000

.field public static final TURN_OFF_CAMERA:I = -0x1

.field public static final UI_MODE_BG:I = 0x1

.field public static final UI_MODE_CAMERA_STREAM:I = 0x5

.field public static final UI_MODE_DESTROY:I = 0x10000

.field public static final UI_MODE_ENTER_ARCALL:I = 0x8

.field public static final UI_MODE_ENTER_SCREEN_SHARE:I = 0x6

.field public static final UI_MODE_EXIT_ARCALL:I = 0x9

.field public static final UI_MODE_EXIT_SCREEN_SHARE:I = 0x7

.field public static final UI_MODE_FG:I = 0x0

.field public static final UI_MODE_FULL_SCREEN:I = 0x2

.field public static final UI_MODE_IMAGE_STREAM:I = 0x4

.field public static final UI_MODE_NORMAL_SCREEN:I = 0x3

.field public static final UI_MODE_RESET:I = 0xa

.field public static final UI_MODE_UNCHANGED:I = -0x1

.field private static final VILTE_SUPPORT:Ljava/lang/String; = "persist.vendor.vilte_support"

.field private static final VIWIFI_SUPPORT:Ljava/lang/String; = "persist.vendor.viwifi_support"

.field public static final VT_SIM_ID_ABSENT:I = -0x1

.field protected static mARCallListener:Lcom/newcalllib/arcall/IImsARCallListener;

.field private static mInstance:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

.field public static sBootCompleted:Z

.field public static sIsCameraRotate:Z

.field public static sIsNoCameraMode:Z


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field public mContext:Landroid/content/Context;

.field private mDataUsageById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureValueReceiver:Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;

.field private mNetworkAvailableCallback:Lcom/mediatek/ims/internal/ImsVTProviderUtil$NetworkAvailableCallback;

.field private mPacker:Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;

.field private mProviderById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderHandler:Landroid/os/Handler;

.field protected mProviderHandlerThread:Landroid/os/HandlerThread;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private sInvalidCameraInfo:[I


# direct methods
.method static bridge synthetic -$$Nest$fgetmConnectivityManager(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)Landroid/net/ConnectivityManager;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProviderById(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetSIM_NUM()I
    .locals 1

    sget v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->SIM_NUM:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 139
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->SIM_NUM:I

    .line 201
    nop

    .line 202
    const-string v0, "persist.vendor.vt.no_camera_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    .line 205
    nop

    .line 206
    const-string v0, "persist.vendor.vt.camera.rotate"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    sput-boolean v2, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsCameraRotate:Z

    .line 208
    sput-boolean v1, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sBootCompleted:Z

    .line 209
    const/4 v0, 0x6

    sput v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->GET_CAMERA_TRY_BOOT_COMPLETE:I

    .line 551
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mInstance:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;-><init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mPacker:Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;

    .line 447
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    .line 448
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mDataUsageById:Ljava/util/Map;

    .line 461
    sget v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->SIM_NUM:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sInvalidCameraInfo:[I

    .line 555
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ProviderHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandlerThread:Landroid/os/HandlerThread;

    .line 556
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 558
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$1;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$1;-><init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    .line 642
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;-><init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mFeatureValueReceiver:Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;

    .line 643
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mFeatureValueReceiver:Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;

    invoke-virtual {v0, p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->setOwner(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V

    .line 645
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$NetworkAvailableCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$NetworkAvailableCallback;-><init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;Lcom/mediatek/ims/internal/ImsVTProviderUtil-IA;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mNetworkAvailableCallback:Lcom/mediatek/ims/internal/ImsVTProviderUtil$NetworkAvailableCallback;

    .line 646
    return-void
.end method

.method protected static getARCallListener()Lcom/newcalllib/arcall/IImsARCallListener;
    .locals 1

    .line 524
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mARCallListener:Lcom/newcalllib/arcall/IImsARCallListener;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;
    .locals 2

    const-class v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    monitor-enter v0

    .line 649
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mInstance:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    if-nez v1, :cond_0

    .line 650
    new-instance v1, Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-direct {v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;-><init>()V

    sput-object v1, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mInstance:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 652
    :cond_0
    sget-object v1, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mInstance:Lcom/mediatek/ims/internal/ImsVTProviderUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 648
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getPreConfigureFPS()I
    .locals 2

    .line 790
    const-string v0, "persist.vendor.vt.vfps"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 791
    .local v0, "fps":I
    return v0
.end method

.method public static is512mbProject()Z
    .locals 2

    .line 780
    const-string v0, "ro.vendor.mtk_config_max_dram_size"

    const-string v1, "0x40000000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x20000000"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCameraAvailable()Z
    .locals 2

    .line 796
    invoke-static {}, Lcom/mediatek/ims/internal/VTSource;->getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;

    move-result-object v0

    .line 798
    .local v0, "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isGmsVersion()Z
    .locals 2

    .line 802
    const-string v0, "ro.com.google.gmsversion"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, "isGms":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isTelephonyLogEnable()Z
    .locals 2

    .line 807
    const-string v0, "persist.log.tag.tel_dbg"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isVideoCallOnByPlatform()Z
    .locals 3

    .line 774
    const-string v0, "persist.vendor.vilte_support"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 775
    const-string v0, "persist.vendor.viwifi_support"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 774
    :goto_1
    return v0
.end method

.method public static isVideoQualityTestMode()Z
    .locals 4

    .line 785
    const-string v0, "persist.vendor.vt.lab_op_code"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 786
    .local v0, "labOp":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method private registerNetworkRequestWithCallback(I)V
    .locals 4
    .param p1, "cap"    # I

    .line 902
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 903
    .local v0, "builder":Landroid/net/NetworkRequest$Builder;
    invoke-virtual {v0, p1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 904
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 906
    .local v1, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerNetworkRequestwithCallback(), networkRequest:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsVT Util"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_0

    .line 909
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    .line 910
    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 912
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mNetworkAvailableCallback:Lcom/mediatek/ims/internal/ImsVTProviderUtil$NetworkAvailableCallback;

    invoke-virtual {v2, v1, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 913
    return-void
.end method


# virtual methods
.method public bind(Lcom/mediatek/ims/internal/ImsVTProvider;IIZ)V
    .locals 3
    .param p1, "p"    # Lcom/mediatek/ims/internal/ImsVTProvider;
    .param p2, "CallId"    # I
    .param p3, "PhoneId"    # I
    .param p4, "isMO"    # Z

    .line 830
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 831
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 832
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 833
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 834
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 835
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 836
    return-void
.end method

.method public bindInternal(Lcom/mediatek/ims/internal/ImsVTProvider;IIZ)V
    .locals 7
    .param p1, "p"    # Lcom/mediatek/ims/internal/ImsVTProvider;
    .param p2, "CallId"    # I
    .param p3, "PhoneId"    # I
    .param p4, "isMO"    # Z

    .line 950
    const-string v0, "ImsVT Util"

    if-nez p1, :cond_0

    .line 951
    const-string v1, "ImsVTProvider == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    return-void

    .line 955
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindInternal(), vtp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phone id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const/high16 v1, 0x10000

    iget v2, p1, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    if-ne v1, v2, :cond_1

    .line 959
    const-string v1, "Ignore bind ImsVTProvider because UI_MODE_DESTROY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    return-void

    .line 966
    :cond_1
    move v1, p2

    .line 967
    .local v1, "id":I
    const/4 v2, 0x1

    .line 969
    .local v2, "ImsCount":I
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/ims/ImsService;->getModemMultiImsCount()I

    move-result v2

    .line 970
    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 971
    shl-int/lit8 v4, p3, 0x10

    or-int v1, v4, p2

    .line 974
    :cond_2
    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v4

    const/16 v5, -0x2710

    if-ne v4, v5, :cond_6

    .line 979
    const/4 v4, 0x0

    .line 980
    .local v4, "wait_time":I
    const-string v5, "bind ImsVTProvider check if exist the same id"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_3
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordGet(I)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 982
    const-string v5, "bind ImsVTProvider the same id exist, wait ..."

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    const-wide/16 v5, 0x190

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    goto :goto_0

    .line 986
    :catch_0
    move-exception v5

    .line 989
    :goto_0
    add-int/lit8 v4, v4, 0x1

    .line 990
    const/16 v5, 0xa

    if-le v4, v5, :cond_3

    .line 991
    const-string v5, "bind ImsVTProvider the same id exist, break!"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    nop

    .line 996
    :cond_4
    invoke-virtual {p1, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setId(I)V

    .line 997
    invoke-virtual {p1, p3}, Lcom/mediatek/ims/internal/ImsVTProvider;->setSimId(I)V

    .line 998
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    const-string v5, "Init"

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->usageGet(I)Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;-><init>(Ljava/lang/String;Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    .line 999
    .local v0, "initUsage":Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    iget-object v5, p1, Lcom/mediatek/ims/internal/ImsVTProvider;->mUsager:Lcom/mediatek/ims/internal/ImsVTUsageManager;

    invoke-virtual {v5, v0}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->setInitUsage(Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    .line 1001
    invoke-virtual {p0, v1, p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordAdd(ILcom/mediatek/ims/internal/ImsVTProvider;)V

    .line 1003
    sget-boolean v5, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    if-eqz v5, :cond_5

    .line 1004
    new-instance v5, Lcom/mediatek/ims/internal/VTDummySource;

    invoke-direct {v5}, Lcom/mediatek/ims/internal/VTDummySource;-><init>()V

    iput-object v5, p1, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    goto :goto_1

    .line 1006
    :cond_5
    new-instance v5, Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v6

    invoke-direct {v5, v6, p1}, Lcom/mediatek/ims/internal/VTSource;-><init>(ILcom/mediatek/ims/internal/VTSource$EventCallback;)V

    iput-object v5, p1, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    .line 1009
    :goto_1
    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSimId()I

    move-result v5

    invoke-static {v1, v5, p4}, Lcom/mediatek/ims/internal/ImsVTProvider;->nInitialization(IIZ)I

    .line 1010
    iput-boolean v3, p1, Lcom/mediatek/ims/internal/ImsVTProvider;->mInitComplete:Z

    .line 1011
    invoke-virtual {p1, p3}, Lcom/mediatek/ims/internal/ImsVTProvider;->startRegisterTelephonyCallback(I)V

    .line 1013
    .end local v0    # "initUsage":Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    .end local v4    # "wait_time":I
    :cond_6
    return-void
.end method

.method public getBooleanFromCarrierConfig(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "simId"    # I

    .line 1046
    invoke-static {p2}, Lcom/mediatek/ims/common/SubscriptionManagerHelper;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 1047
    .local v0, "subId":I
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    .line 1048
    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 1049
    .local v1, "configMgr":Landroid/telephony/CarrierConfigManager;
    nop

    .line 1050
    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1051
    .local v2, "carrierConfig":Landroid/os/PersistableBundle;
    if-eqz v2, :cond_0

    .line 1052
    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1053
    .local v3, "result":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBooleanFromCarrierConfig() key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ImsVT Util"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    return v3

    .line 1056
    .end local v3    # "result":Z
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;
    .locals 2

    .line 657
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeExtensionPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ExtensionPluginFactory;

    move-result-object v0

    .line 658
    .local v0, "facotry":Lcom/mediatek/ims/plugin/ExtensionPluginFactory;
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/plugin/ExtensionPluginFactory;->makeImsCallPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v1

    return-object v1
.end method

.method public getImsOemCallUtil()Lcom/mediatek/ims/plugin/ImsCallOemPlugin;
    .locals 2

    .line 663
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v0

    .line 664
    .local v0, "facotry":Lcom/mediatek/ims/plugin/OemPluginFactory;
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsCallPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    move-result-object v1

    return-object v1
.end method

.method public handleBootComplete()V
    .locals 6

    .line 916
    const-string v0, "handleBootComplete"

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->SIM_NUM:I

    if-ge v0, v2, :cond_3

    .line 919
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sInvalidCameraInfo:[I

    aget v2, v2, v0

    if-lez v2, :cond_2

    .line 920
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boot complete, has sent a null camera parameter, simId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const/4 v2, 0x0

    .line 924
    .local v2, "count":I
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get Camera Resolutions after bootcomplete, count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    invoke-static {}, Lcom/mediatek/ims/internal/VTSource;->getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;

    move-result-object v3

    .line 926
    .local v3, "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    if-nez v3, :cond_0

    .line 927
    sget v4, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->GET_CAMERA_TRY_BOOT_COMPLETE:I

    if-ge v2, v4, :cond_0

    .line 929
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    goto :goto_2

    .line 930
    :catch_0
    move-exception v4

    .line 932
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 933
    goto :goto_1

    .line 938
    :cond_0
    if-eqz v3, :cond_1

    .line 939
    invoke-static {v0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCameraParameters(I[Lcom/mediatek/ims/internal/VTSource$Resolution;)I

    goto :goto_3

    .line 941
    :cond_1
    const-string v4, "failed to get camera finally, no need send to UA for any SIM, just return"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    return-void

    .line 918
    .end local v2    # "count":I
    .end local v3    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 946
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public isViWifiOn(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 770
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mFeatureValueReceiver:Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->getInitViWifiValue(I)Z

    move-result v0

    return v0
.end method

.method public isVideoCallOn(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 766
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mFeatureValueReceiver:Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->getInitViLTEValue(I)Z

    move-result v0

    return v0
.end method

.method public notifyBootCompleted()V
    .locals 2

    .line 815
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 816
    return-void
.end method

.method public packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;
    .locals 1
    .param p1, "VideoProfile"    # Landroid/telecom/VideoProfile;

    .line 668
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mPacker:Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public quitAllThread()V
    .locals 4

    .line 735
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 737
    .local v1, "p":Ljava/lang/Object;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quitThread, id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsVT Util"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    move-object v2, v1

    check-cast v2, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->quitThread()V

    .line 739
    .end local v1    # "p":Ljava/lang/Object;
    goto :goto_0

    .line 741
    :cond_0
    return-void
.end method

.method public reInitRefVTP()V
    .locals 4

    .line 823
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 825
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 826
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 827
    return-void
.end method

.method public reRegisterNetworkCallback()V
    .locals 3

    .line 889
    const-string v0, "ImsVT Util"

    const-string v1, "reRegisterNetworkCallback() for vtservice reInit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mNetworkAvailableCallback:Lcom/mediatek/ims/internal/ImsVTProviderUtil$NetworkAvailableCallback;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 893
    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mNetworkAvailableCallback:Lcom/mediatek/ims/internal/ImsVTProviderUtil$NetworkAvailableCallback;

    .line 896
    :cond_0
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$NetworkAvailableCallback;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$NetworkAvailableCallback;-><init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;Lcom/mediatek/ims/internal/ImsVTProviderUtil-IA;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mNetworkAvailableCallback:Lcom/mediatek/ims/internal/ImsVTProviderUtil$NetworkAvailableCallback;

    .line 897
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->registerNetworkRequestWithCallback(I)V

    .line 898
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->registerNetworkRequestWithCallback(I)V

    .line 899
    return-void
.end method

.method public recordAdd(ILcom/mediatek/ims/internal/ImsVTProvider;)V
    .locals 3
    .param p1, "Id"    # I
    .param p2, "p"    # Lcom/mediatek/ims/internal/ImsVTProvider;

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recordAdd id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    return-void
.end method

.method public recordContain(I)Z
    .locals 2
    .param p1, "Id"    # I

    .line 727
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public recordGet(I)Lcom/mediatek/ims/internal/ImsVTProvider;
    .locals 3
    .param p1, "Id"    # I

    .line 710
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isTelephonyLogEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recordGet id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/ImsVTProvider;

    return-object v0
.end method

.method public recordPopId()I
    .locals 2

    .line 718
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 720
    .local v0, "p":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v1

    return v1

    .line 723
    .end local v0    # "p":Ljava/lang/Object;
    :cond_0
    const/16 v0, -0x2710

    return v0
.end method

.method public recordRemove(I)V
    .locals 3
    .param p1, "Id"    # I

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recordRemove id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    return-void
.end method

.method public recordRemoveAll()V
    .locals 2

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recordRemoveAll, size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 706
    return-void
.end method

.method public recordSize()I
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public releaseVTSourceAll()V
    .locals 4

    .line 756
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 758
    .local v1, "p":Ljava/lang/Object;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseVTSourceAll, id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsVT Util"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    move-object v2, v1

    check-cast v2, Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v2, v2, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v2}, Lcom/mediatek/ims/internal/VTSource;->release()V

    .line 760
    move-object v2, v1

    check-cast v2, Lcom/mediatek/ims/internal/ImsVTProvider;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    .line 761
    .end local v1    # "p":Ljava/lang/Object;
    goto :goto_0

    .line 763
    :cond_0
    return-void
.end method

.method public resetWrapper(Lcom/mediatek/ims/internal/ImsVTProvider;)V
    .locals 3
    .param p1, "p"    # Lcom/mediatek/ims/internal/ImsVTProvider;

    .line 854
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 855
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 856
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 857
    return-void
.end method

.method public resetWrapperInternal(Lcom/mediatek/ims/internal/ImsVTProvider;)V
    .locals 0
    .param p1, "p"    # Lcom/mediatek/ims/internal/ImsVTProvider;

    .line 1040
    if-eqz p1, :cond_0

    .line 1041
    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->onResetWrapper()V

    .line 1043
    :cond_0
    return-void
.end method

.method public setContextAndInitRefVTP(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 811
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 812
    return-void
.end method

.method public setContextAndInitRefVTPInternal(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setContextAndInitRefVTPInternal(), context ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    .line 864
    sget-boolean v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    if-eqz v0, :cond_0

    .line 865
    invoke-static {p1}, Lcom/mediatek/ims/internal/VTDummySource;->setContext(Landroid/content/Context;)V

    goto :goto_0

    .line 867
    :cond_0
    invoke-static {p1}, Lcom/mediatek/ims/internal/VTSource;->setContext(Landroid/content/Context;)V

    .line 869
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 871
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mFeatureValueReceiver:Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;

    if-eqz v0, :cond_1

    .line 872
    const-string v0, "setContextAndInitRefVTP, register FeatureValueReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 874
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.android.intent.action.IMS_FEATURE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 875
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mFeatureValueReceiver:Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 878
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->registerNetworkRequestWithCallback(I)V

    .line 879
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->registerNetworkRequestWithCallback(I)V

    .line 881
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOnByPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 882
    const-string v0, "setContextAndInitRefVTPInternal(), ViLTE on, do natvie init"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProvider;->nInitRefVTP()I

    .line 884
    const/16 v0, 0x3e9

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->nTagSocketWithUid(I)I

    .line 886
    :cond_2
    return-void
.end method

.method public setInValidCameraFlag(I)V
    .locals 2
    .param p1, "simId"    # I

    .line 819
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sInvalidCameraInfo:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    .line 820
    return-void
.end method

.method public setUIMode(Lcom/mediatek/ims/internal/ImsVTProvider;I)V
    .locals 3
    .param p1, "p"    # Lcom/mediatek/ims/internal/ImsVTProvider;
    .param p2, "mode"    # I

    .line 839
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 840
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 841
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 842
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 843
    return-void
.end method

.method public setUIModeInternal(Lcom/mediatek/ims/internal/ImsVTProvider;I)V
    .locals 0
    .param p1, "p"    # Lcom/mediatek/ims/internal/ImsVTProvider;
    .param p2, "mode"    # I

    .line 1016
    if-eqz p1, :cond_0

    .line 1017
    invoke-virtual {p1, p2}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSetUIMode(I)V

    .line 1019
    :cond_0
    return-void
.end method

.method public switchFeature(IIZ)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "feature"    # I
    .param p3, "isOn"    # Z

    .line 846
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 847
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 848
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 849
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 850
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 851
    return-void
.end method

.method public switchFeatureInternal(IIZ)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "feature"    # I
    .param p3, "isOn"    # Z

    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchFeatureInternal, feature = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1026
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1028
    .local v2, "p":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSimId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 1030
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchFeatureInternal, id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    move-object v3, v2

    check-cast v3, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v3, p2, p3}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSwitchFeature(IZ)V

    .line 1034
    .end local v2    # "p":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 1036
    :cond_1
    return-void
.end method

.method public unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;
    .locals 1
    .param p1, "flattened"    # Ljava/lang/String;

    .line 672
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mPacker:Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v0

    return-object v0
.end method

.method public updateCameraUsage(I)V
    .locals 4
    .param p1, "Id"    # I

    .line 744
    const-string v0, "ImsVT Util"

    const-string v1, "updateCameraUsage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 746
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 748
    .local v1, "p":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 749
    move-object v2, v1

    check-cast v2, Lcom/mediatek/ims/internal/ImsVTProvider;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->setCameraInternal(Ljava/lang/String;)V

    .line 751
    .end local v1    # "p":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 753
    :cond_1
    return-void
.end method

.method public usageGet(I)Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    .locals 3
    .param p1, "Id"    # I

    .line 681
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mDataUsageById:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 683
    .local v0, "usage":Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    if-nez v0, :cond_0

    .line 684
    new-instance v1, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    const-string v2, "Dummy"

    invoke-direct {v1, v2}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 686
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[usageGet][id ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsVT Util"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    return-object v0
.end method

.method public usageSet(ILcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V
    .locals 4
    .param p1, "Id"    # I
    .param p2, "usage"    # Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[usageSet][id ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mDataUsageById:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    const-string v3, "Record"

    invoke-direct {v2, v3, p2}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;-><init>(Ljava/lang/String;Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    return-void
.end method
