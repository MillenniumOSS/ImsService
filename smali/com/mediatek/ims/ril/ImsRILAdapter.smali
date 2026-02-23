.class public final Lcom/mediatek/ims/ril/ImsRILAdapter;
.super Lcom/mediatek/ims/ril/ImsBaseCommands;
.source "ImsRILAdapter.java"

# interfaces
.implements Lcom/mediatek/ims/ril/ImsCommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;,
        Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;,
        Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;,
        Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;,
        Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;,
        Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;
    }
.end annotation


# static fields
.field static final AIDL_SERVICE_NAME_MTK:[Ljava/lang/String;

.field static final AIDL_SERVICE_NAME_MTK_IMS:[Ljava/lang/String;

.field private static final DEFAULT_ACK_WAKE_LOCK_TIMEOUT_MS:I = 0xc8

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT_MS:I = 0xea60

.field static final EVENT_ACK_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final EVENT_AIDL_PROXY_DEAD:I = 0x9

.field static final EVENT_BLOCKING_RESPONSE_TIMEOUT:I = 0x5

.field static final EVENT_MTK_AIDL_PROXY_DEAD:I = 0xa

.field static final EVENT_MTK_RADIO_PROXY_DEAD:I = 0x7

.field static final EVENT_RADIO_PROXY_DEAD:I = 0x6

.field static final EVENT_SEND:I = 0x1

.field static final EVENT_TRIGGER_AOSP_AIDL_PENDING_URC:I = 0xb

.field static final EVENT_TRIGGER_MTK_AIDL_PENDING_URC:I = 0xc

.field static final EVENT_TRIGGER_TO_FIRE_PENDING_URC:I = 0x8

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field public static final FOR_ACK_WAKELOCK:I = 0x1

.field public static final FOR_WAKELOCK:I = 0x0

.field static final IMSRIL_LOGD:Z = true

.field static final IMSRIL_LOGV:Z = false

.field static final IMSRIL_LOG_TAG:Ljava/lang/String; = "IMS_RILA"

.field static final IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

.field static final IMS_RILA_LOGD:Z = true

.field public static final INVALID_WAKELOCK:I = -0x1

.field static final IRADIO_GET_SERVICE_DELAY_MILLIS:I = 0x3e8

.field static final MAX_SERVICE_IDX:I = 0x4

.field static final MIN_SERVICE_IDX:I = 0x0

.field static final MODEM_SERVICE:I = 0x3

.field static final MTK_IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

.field public static final MTK_IMS_SERVICE:I = 0x1

.field public static final MTK_MAX_SERVICE_IDX:I = 0x3

.field public static final MTK_MIN_SERVICE_IDX:I = 0x0

.field public static final MTK_MODEM_SERVICE:I = 0x3

.field static final MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

.field public static final MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

.field public static final MTK_RADIO_HAL_VERSION_4_1:Lcom/android/internal/telephony/HalVersion;

.field public static final MTK_RADIO_HAL_VERSION_4_2:Lcom/android/internal/telephony/HalVersion;

.field public static final MTK_RADIO_HAL_VERSION_4_3:Lcom/android/internal/telephony/HalVersion;

.field public static final MTK_RADIO_SERVICE:I = 0x0

.field public static final MTK_VOICE_SERVICE:I = 0x2

.field static final NETWORK_SERVICE:I = 0x4

.field static final PROPERTY_WAKE_LOCK_TIMEOUT:Ljava/lang/String; = "ro.ril.wake_lock_timeout"

.field static final RADIO_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

.field static final RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

.field static final RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

.field static final RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

.field static final RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

.field static final RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

.field public static final RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

.field public static final RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

.field public static final RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

.field public static final RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

.field public static final RADIO_HAL_VERSION_2_3:Lcom/android/internal/telephony/HalVersion;

.field public static final RADIO_HAL_VERSION_2_4:Lcom/android/internal/telephony/HalVersion;

.field static final RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

.field static final RADIO_SERVICE:I = 0x0

.field static final RILJ_ACK_WAKELOCK_NAME:Ljava/lang/String; = "IMSRIL_ACK_WL"

.field static final RIL_HISTOGRAM_BUCKET_COUNT:I = 0x5

.field static final SIM_SERVICE:I = 0x2

.field static final VOICE_SERVICE:I = 0x1

.field static mRilTimeHistograms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAckWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mAckWakeLockTimeout:I

.field volatile mAckWlSequenceNum:I

.field private mActiveWakelockWorkSource:Landroid/os/WorkSource;

.field private final mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

.field mContext:Landroid/content/Context;

.field private final mDeathRecipients:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

.field mImsRadioIndication:Lcom/mediatek/ims/ril/ImsRadioIndication;

.field mImsRadioResponse:Lcom/mediatek/ims/ril/ImsRadioResponse;

.field protected mIsCellularSupported:Z

.field mIsMobileNetworkSupported:Z

.field mLastNITZTimeInfo:[Ljava/lang/Object;

.field private mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field public mModemIndication:Lcom/mediatek/ims/ril/ModemIndication;

.field public mModemResponse:Lcom/mediatek/ims/ril/ModemResponse;

.field private final mMtkDeathRecipients:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mMtkRadioExImsIndication:Lcom/mediatek/ims/ril/MtkRadioExImsIndication;

.field private mMtkRadioExImsResponse:Lcom/mediatek/ims/ril/MtkRadioExImsResponse;

.field private mMtkRadioExModemIndication:Lcom/mediatek/ims/ril/MtkRadioExModemIndication;

.field private mMtkRadioExModemResponse:Lcom/mediatek/ims/ril/MtkRadioExModemResponse;

.field private mMtkRadioExVoiceIndication:Lcom/mediatek/ims/ril/MtkRadioExVoiceIndication;

.field private mMtkRadioExVoiceResponse:Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;

.field volatile mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

.field final mMtkRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field final mMtkRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;

.field private mMtkRadioVersion:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/HalVersion;",
            ">;"
        }
    .end annotation
.end field

.field private final mMtkServiceCookies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field public mNetworkIndication:Lcom/mediatek/ims/ril/NetworkIndication;

.field public mNetworkResponse:Lcom/mediatek/ims/ril/NetworkResponse;

.field final mPhoneId:Ljava/lang/Integer;

.field private mRILDefaultWorkSource:Landroid/os/WorkSource;

.field mRadioIndication:Lcom/mediatek/ims/ril/RadioIndicationImpl;

.field volatile mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

.field final mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field final mRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

.field mRadioResponse:Lcom/mediatek/ims/ril/RadioResponseImpl;

.field private mRadioVersion:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/HalVersion;",
            ">;"
        }
    .end annotation
.end field

.field mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/ims/ril/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field final mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

.field private final mServiceCookies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceProxies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/ims/ril/RadioServiceProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceProxiesMtk:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mSimIndication:Lcom/mediatek/ims/ril/SimIndication;

.field private mSimResponse:Lcom/mediatek/ims/ril/SimResponse;

.field mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mVoiceIndication:Lcom/mediatek/ims/ril/VoiceIndication;

.field private mVoiceResponse:Lcom/mediatek/ims/ril/VoiceResponse;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockCount:I

.field final mWakeLockTimeout:I

.field volatile mWlSequenceNum:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmMetrics(Lcom/mediatek/ims/ril/ImsRILAdapter;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMtkRadioVersion(Lcom/mediatek/ims/ril/ImsRILAdapter;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMtkServiceCookies(Lcom/mediatek/ims/ril/ImsRILAdapter;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkServiceCookies:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRadioVersion(Lcom/mediatek/ims/ril/ImsRILAdapter;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceCookies(Lcom/mediatek/ims/ril/ImsRILAdapter;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceCookies:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mclearWakeLock(Lcom/mediatek/ims/ril/ImsRILAdapter;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->clearWakeLock(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdecrementWakeLock(Lcom/mediatek/ims/ril/ImsRILAdapter;Lcom/mediatek/ims/ril/RILRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfindAndRemoveRequestFromList(Lcom/mediatek/ims/ril/ImsRILAdapter;I)Lcom/mediatek/ims/ril/RILRequest;
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->findAndRemoveRequestFromList(I)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetMtkRadioProxy(Lcom/mediatek/ims/ril/ImsRILAdapter;Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetRadioProxy(Lcom/mediatek/ims/ril/ImsRILAdapter;Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresetAllProxyAndRequestList(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->resetAllProxyAndRequestList(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetResponseForTimedOutRILRequest(Lcom/mediatek/ims/ril/RILRequest;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getResponseForTimedOutRILRequest(Lcom/mediatek/ims/ril/RILRequest;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smmtkServiceToString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->mtkServiceToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smserviceToString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->serviceToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 357
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    .line 368
    sget-object v0, Lcom/android/internal/telephony/HalVersion;->UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    .line 371
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

    .line 374
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    .line 377
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    .line 380
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    .line 383
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v5, 0x4

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    .line 386
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v6, 0x5

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    .line 389
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v6, 0x6

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    .line 392
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    .line 395
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v3, v1}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    .line 398
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v3, v3}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    .line 401
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v3, v4}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_3:Lcom/android/internal/telephony/HalVersion;

    .line 404
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v3, v5}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_4:Lcom/android/internal/telephony/HalVersion;

    .line 413
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v4, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    .line 416
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v5, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    .line 419
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v5, v1}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_1:Lcom/android/internal/telephony/HalVersion;

    .line 422
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v5, v3}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_2:Lcom/android/internal/telephony/HalVersion;

    .line 425
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v5, v4}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_3:Lcom/android/internal/telephony/HalVersion;

    .line 535
    const-string v0, "slot3"

    const-string v1, "slot4"

    const-string v2, "slot1"

    const-string v3, "slot2"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK:[Ljava/lang/String;

    .line 537
    const-string v0, "imsSlot1"

    const-string v1, "imsSlot2"

    const-string v2, "imsSlot3"

    const-string v3, "imsSlot4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK_IMS:[Ljava/lang/String;

    .line 541
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    .line 544
    const-string v0, "imsAospSlot3"

    const-string v1, "imsAospSlot4"

    const-string v2, "imsAospSlot1"

    const-string v3, "imsAospSlot2"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instanceId"    # I

    .line 1462
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {p0 .. p2}, Lcom/mediatek/ims/ril/ImsBaseCommands;-><init>(Landroid/content/Context;I)V

    .line 341
    new-instance v0, Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-direct {v0}, Lcom/android/internal/telephony/ClientWakelockTracker;-><init>()V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    .line 354
    const/4 v4, 0x0

    .line 1482
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 354
    iput v4, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWlSequenceNum:I

    .line 355
    iput v4, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWlSequenceNum:I

    .line 356
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    .line 363
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 407
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    .line 410
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    .line 434
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 441
    new-instance v0, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 449
    const/4 v6, 0x0

    iput-object v6, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 450
    iput-object v6, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 468
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxies:Landroid/util/SparseArray;

    .line 469
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDeathRecipients:Landroid/util/SparseArray;

    .line 470
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceCookies:Landroid/util/SparseArray;

    .line 472
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxiesMtk:Landroid/util/SparseArray;

    .line 487
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkDeathRecipients:Landroid/util/SparseArray;

    .line 489
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkServiceCookies:Landroid/util/SparseArray;

    .line 492
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v7, 0x0

    invoke-direct {v0, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 493
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ims-RIL: init phone = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1467
    iput-object v2, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mContext:Landroid/content/Context;

    .line 1468
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 1470
    const-string v0, "connectivity"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/net/ConnectivityManager;

    .line 1472
    .local v9, "cm":Landroid/net/ConnectivityManager;
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIsMobileNetworkSupported:Z

    .line 1474
    const-string v0, "phone"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 1476
    .local v11, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v10

    :goto_1
    iput-boolean v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIsCellularSupported:Z

    .line 1479
    :try_start_0
    invoke-direct {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->isRadioVersion2_0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1480
    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    sget-object v12, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1482
    :cond_2
    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    sget-object v12, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    :goto_2
    invoke-direct {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->isMtkRadioExVersion4_0()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1485
    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    sget-object v12, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1487
    :cond_3
    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    sget-object v12, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1494
    :goto_3
    goto :goto_4

    .line 1489
    :catch_0
    move-exception v0

    .line 1496
    :goto_4
    new-instance v0, Lcom/mediatek/ims/ril/RadioResponseImpl;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/RadioResponseImpl;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioResponse:Lcom/mediatek/ims/ril/RadioResponseImpl;

    .line 1497
    new-instance v0, Lcom/mediatek/ims/ril/RadioIndicationImpl;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/RadioIndicationImpl;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioIndication:Lcom/mediatek/ims/ril/RadioIndicationImpl;

    .line 1498
    new-instance v0, Lcom/mediatek/ims/ril/ModemResponse;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/ModemResponse;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mModemResponse:Lcom/mediatek/ims/ril/ModemResponse;

    .line 1499
    new-instance v0, Lcom/mediatek/ims/ril/ModemIndication;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/ModemIndication;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mModemIndication:Lcom/mediatek/ims/ril/ModemIndication;

    .line 1500
    new-instance v0, Lcom/mediatek/ims/ril/NetworkResponse;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/NetworkResponse;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNetworkResponse:Lcom/mediatek/ims/ril/NetworkResponse;

    .line 1501
    new-instance v0, Lcom/mediatek/ims/ril/NetworkIndication;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/NetworkIndication;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNetworkIndication:Lcom/mediatek/ims/ril/NetworkIndication;

    .line 1502
    new-instance v0, Lcom/mediatek/ims/ril/SimResponse;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/SimResponse;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSimResponse:Lcom/mediatek/ims/ril/SimResponse;

    .line 1503
    new-instance v0, Lcom/mediatek/ims/ril/SimIndication;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/SimIndication;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSimIndication:Lcom/mediatek/ims/ril/SimIndication;

    .line 1504
    new-instance v0, Lcom/mediatek/ims/ril/VoiceResponse;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/VoiceResponse;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVoiceResponse:Lcom/mediatek/ims/ril/VoiceResponse;

    .line 1505
    new-instance v0, Lcom/mediatek/ims/ril/VoiceIndication;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/VoiceIndication;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVoiceIndication:Lcom/mediatek/ims/ril/VoiceIndication;

    .line 1507
    new-instance v0, Lcom/mediatek/ims/ril/ImsRadioResponse;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/ImsRadioResponse;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioResponse:Lcom/mediatek/ims/ril/ImsRadioResponse;

    .line 1508
    new-instance v0, Lcom/mediatek/ims/ril/ImsRadioIndication;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/ImsRadioIndication;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioIndication:Lcom/mediatek/ims/ril/ImsRadioIndication;

    .line 1509
    new-instance v0, Lcom/mediatek/ims/ril/MtkRadioExModemResponse;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/MtkRadioExModemResponse;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExModemResponse:Lcom/mediatek/ims/ril/MtkRadioExModemResponse;

    .line 1510
    new-instance v0, Lcom/mediatek/ims/ril/MtkRadioExModemIndication;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/MtkRadioExModemIndication;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExModemIndication:Lcom/mediatek/ims/ril/MtkRadioExModemIndication;

    .line 1511
    new-instance v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExVoiceResponse:Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;

    .line 1512
    new-instance v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceIndication;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/MtkRadioExVoiceIndication;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExVoiceIndication:Lcom/mediatek/ims/ril/MtkRadioExVoiceIndication;

    .line 1513
    new-instance v0, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExImsResponse:Lcom/mediatek/ims/ril/MtkRadioExImsResponse;

    .line 1514
    new-instance v0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExImsIndication:Lcom/mediatek/ims/ril/MtkRadioExImsIndication;

    .line 1516
    new-instance v0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    .line 1517
    new-instance v0, Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

    .line 1518
    new-instance v0, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;

    .line 1520
    const/4 v0, 0x0

    .local v0, "service":I
    :goto_5
    const/4 v12, 0x4

    if-gt v0, v12, :cond_5

    .line 1521
    if-eqz v0, :cond_4

    .line 1522
    iget-object v12, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    sget-object v14, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    iget-object v12, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDeathRecipients:Landroid/util/SparseArray;

    new-instance v13, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;

    invoke-direct {v13, v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    invoke-virtual {v12, v0, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1526
    :cond_4
    iget-object v12, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceCookies:Landroid/util/SparseArray;

    new-instance v13, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v13, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v12, v0, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1520
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1530
    .end local v0    # "service":I
    :cond_5
    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxies:Landroid/util/SparseArray;

    new-instance v13, Lcom/mediatek/ims/ril/RadioModemProxy;

    invoke-direct {v13}, Lcom/mediatek/ims/ril/RadioModemProxy;-><init>()V

    const/4 v14, 0x3

    invoke-virtual {v0, v14, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1531
    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxies:Landroid/util/SparseArray;

    new-instance v13, Lcom/mediatek/ims/ril/RadioNetworkProxy;

    invoke-direct {v13}, Lcom/mediatek/ims/ril/RadioNetworkProxy;-><init>()V

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1532
    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxies:Landroid/util/SparseArray;

    new-instance v13, Lcom/mediatek/ims/ril/RadioSimProxy;

    invoke-direct {v13}, Lcom/mediatek/ims/ril/RadioSimProxy;-><init>()V

    const/4 v15, 0x2

    invoke-virtual {v0, v15, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1533
    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxies:Landroid/util/SparseArray;

    new-instance v13, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-direct {v13}, Lcom/mediatek/ims/ril/RadioVoiceProxy;-><init>()V

    invoke-virtual {v0, v10, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1535
    const/4 v0, 0x0

    .restart local v0    # "service":I
    :goto_6
    if-gt v0, v14, :cond_7

    .line 1536
    if-eqz v0, :cond_6

    .line 1537
    iget-object v13, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v12, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v13, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1538
    iget-object v6, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkDeathRecipients:Landroid/util/SparseArray;

    new-instance v12, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;

    invoke-direct {v12, v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    invoke-virtual {v6, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1540
    :cond_6
    iget-object v6, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkServiceCookies:Landroid/util/SparseArray;

    new-instance v12, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v12, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v6, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1535
    add-int/lit8 v0, v0, 0x1

    const/4 v6, 0x0

    const/4 v12, 0x4

    goto :goto_6

    .line 1544
    .end local v0    # "service":I
    :cond_7
    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxiesMtk:Landroid/util/SparseArray;

    new-instance v6, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-direct {v6}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;-><init>()V

    invoke-virtual {v0, v14, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1546
    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxiesMtk:Landroid/util/SparseArray;

    new-instance v6, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    invoke-direct {v6}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;-><init>()V

    invoke-virtual {v0, v15, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1547
    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxiesMtk:Landroid/util/SparseArray;

    new-instance v6, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-direct {v6}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;-><init>()V

    invoke-virtual {v0, v10, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1549
    const-string v0, "power"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1550
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v6, "IMS_RILA"

    invoke-virtual {v0, v10, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1551
    iget-object v6, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1552
    const-string v6, "IMSRIL_ACK_WL"

    invoke-virtual {v0, v10, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1553
    iget-object v6, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1554
    const v6, 0xea60

    const-string v7, "ro.ril.wake_lock_timeout"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockTimeout:I

    .line 1556
    const/16 v6, 0xc8

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLockTimeout:I

    .line 1558
    iput v4, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    .line 1559
    new-instance v6, Landroid/os/WorkSource;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1560
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object v6, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1564
    const/4 v6, 0x0

    .local v6, "service":I
    :goto_7
    const-wide/16 v7, 0x3e8

    const-string v12, "Ims-RIL:["

    const/4 v13, 0x4

    if-gt v6, v13, :cond_b

    .line 1565
    if-nez v6, :cond_9

    .line 1566
    const/4 v7, 0x0

    invoke-direct {v1, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v8

    .line 1568
    .local v8, "proxy":Landroid/hardware/radio/V1_0/IRadio;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ims-RIL: proxy = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v8, :cond_8

    move v12, v10

    goto :goto_8

    :cond_8
    move v12, v4

    :goto_8
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1570
    .end local v8    # "proxy":Landroid/hardware/radio/V1_0/IRadio;
    goto :goto_9

    .line 1573
    :cond_9
    const/4 v15, 0x0

    invoke-virtual {v1, v6, v15}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v16

    .line 1575
    .local v16, "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ims-RIL: serviceProxy.isAidl = "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isAidl()Z

    move-result v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1577
    iget-object v10, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/HalVersion;

    sget-object v15, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v10, v15}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1579
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "], send EVENT_TRIGGER_AOSP_AIDL_PENDING_URC"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1580
    iget-object v10, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget-object v12, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    .line 1581
    const/16 v15, 0xb

    invoke-virtual {v12, v15, v6, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    .line 1580
    invoke-virtual {v10, v12, v7, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1564
    .end local v16    # "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    :cond_a
    :goto_9
    add-int/lit8 v6, v6, 0x1

    const/4 v10, 0x1

    goto/16 :goto_7

    .line 1588
    .end local v6    # "service":I
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "service":I
    :goto_a
    if-gt v6, v14, :cond_f

    .line 1589
    if-nez v6, :cond_d

    .line 1590
    const/4 v15, 0x0

    invoke-direct {v1, v15}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v10

    .line 1592
    .local v10, "mtkRadioProxy":Landroid/hidl/base/V1_0/IBase;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Mtk-Ims-RIL: mtkRadioProxy = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v10, :cond_c

    const/4 v15, 0x1

    goto :goto_b

    :cond_c
    move v15, v4

    :goto_b
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1594
    .end local v10    # "mtkRadioProxy":Landroid/hidl/base/V1_0/IBase;
    goto :goto_c

    .line 1597
    :cond_d
    const/4 v15, 0x0

    invoke-virtual {v1, v6, v15}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v10

    .line 1599
    .local v10, "mtkServiceProxy":Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Mtk-Ims-RIL: mtkServiceProxy.isAidl = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isAidl()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1601
    iget-object v13, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    invoke-interface {v13, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    iget-object v13, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    .line 1602
    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/HalVersion;

    sget-object v14, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 1603
    invoke-virtual {v10}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 1605
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "], send EVENT_TRIGGER_MTK_AIDL_PENDING_URC "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1606
    iget-object v13, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget-object v14, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    .line 1607
    const/16 v15, 0xc

    invoke-virtual {v14, v15, v6, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    .line 1606
    invoke-virtual {v13, v14, v7, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1588
    .end local v10    # "mtkServiceProxy":Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    :cond_e
    :goto_c
    add-int/lit8 v6, v6, 0x1

    const/4 v14, 0x3

    goto/16 :goto_a

    .line 1614
    .end local v6    # "service":I
    :cond_f
    return-void
.end method

.method private acquireWakeLock(Lcom/mediatek/ims/ril/RILRequest;I)V
    .locals 7
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;
    .param p2, "wakeLockType"    # I

    .line 4634
    monitor-enter p1

    .line 4635
    :try_start_0
    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4636
    const-string v0, "IMS_RILA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to aquire wakelock for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4637
    monitor-exit p1

    return-void

    .line 4640
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 4676
    const-string v0, "IMS_RILA"

    goto/16 :goto_2

    .line 4666
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4667
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4668
    iget v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWlSequenceNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWlSequenceNum:I

    .line 4670
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4671
    .local v1, "msg":Landroid/os/Message;
    iget v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWlSequenceNum:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 4672
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4673
    nop

    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 4674
    goto :goto_1

    .line 4673
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .end local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local p2    # "wakeLockType":I
    :try_start_2
    throw v1

    .line 4642
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .restart local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .restart local p2    # "wakeLockType":I
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4643
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4644
    iget v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    .line 4645
    iget v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWlSequenceNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWlSequenceNum:I

    .line 4647
    iget-object v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;

    move-result-object v1

    .line 4648
    .local v1, "clientId":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4649
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_1

    .line 4650
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v3, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_0

    .line 4652
    :cond_1
    iget-object v2, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    iput-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 4654
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4657
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v3, p1, Lcom/mediatek/ims/ril/RILRequest;->mClientId:Ljava/lang/String;

    iget v4, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    iget v5, p1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    iget v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/ClientWakelockTracker;->startTracking(Ljava/lang/String;III)V

    .line 4660
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4661
    .local v2, "msg":Landroid/os/Message;
    iget v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWlSequenceNum:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 4662
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockTimeout:I

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4663
    nop

    .end local v1    # "clientId":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4664
    nop

    .line 4679
    :goto_1
    :try_start_4
    iput p2, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    .line 4680
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4681
    return-void

    .line 4663
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .end local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local p2    # "wakeLockType":I
    :try_start_6
    throw v1

    .line 4676
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .restart local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .restart local p2    # "wakeLockType":I
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acquiring Invalid Wakelock type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4677
    monitor-exit p1

    return-void

    .line 4680
    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private addRequest(Lcom/mediatek/ims/ril/RILRequest;)V
    .locals 3
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 1617
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->acquireWakeLock(Lcom/mediatek/ims/ril/RILRequest;I)V

    .line 1618
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1619
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mStartTimeMs:J

    .line 1620
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    iget v2, p1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1621
    monitor-exit v0

    .line 1622
    return-void

    .line 1621
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addToRilHistogram(Lcom/mediatek/ims/ril/RILRequest;)V
    .locals 9
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 4783
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4784
    .local v0, "endTime":J
    iget-wide v2, p1, Lcom/mediatek/ims/ril/RILRequest;->mStartTimeMs:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 4786
    .local v2, "totalTime":I
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v3

    .line 4787
    :try_start_0
    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    iget v5, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyHistogram;

    .line 4788
    .local v4, "entry":Landroid/telephony/TelephonyHistogram;
    if-nez v4, :cond_0

    .line 4790
    new-instance v5, Landroid/telephony/TelephonyHistogram;

    iget v6, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-direct {v5, v8, v6, v7}, Landroid/telephony/TelephonyHistogram;-><init>(III)V

    move-object v4, v5

    .line 4792
    sget-object v5, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    iget v6, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4794
    :cond_0
    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyHistogram;->addTimeTaken(I)V

    .line 4795
    .end local v4    # "entry":Landroid/telephony/TelephonyHistogram;
    monitor-exit v3

    .line 4796
    return-void

    .line 4795
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private clearWakeLock(I)Z
    .locals 6
    .param p1, "wakeLockType"    # I

    .line 4722
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 4723
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 4724
    :try_start_0
    iget v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v2

    return v1

    .line 4725
    :cond_0
    const-string v3, "IMS_RILA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NOTE: mWakeLockCount is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "at time of clearing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4727
    iput v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    .line 4728
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4729
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTrackingAll()V

    .line 4730
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 4731
    monitor-exit v2

    return v0

    .line 4732
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4734
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 4735
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_2

    monitor-exit v2

    return v1

    .line 4736
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4737
    monitor-exit v2

    return v0

    .line 4738
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public static convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 1649
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V
    .locals 8
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 4684
    monitor-enter p1

    .line 4685
    :try_start_0
    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    packed-switch v0, :pswitch_data_0

    .line 4715
    const-string v0, "IMS_RILA"

    goto :goto_2

    .line 4711
    :pswitch_0
    goto/16 :goto_3

    .line 4687
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4688
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v2, p1, Lcom/mediatek/ims/ril/RILRequest;->mClientId:Ljava/lang/String;

    iget v3, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    iget v4, p1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 4690
    iget v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-le v5, v7, :cond_0

    iget v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    sub-int/2addr v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    .line 4688
    :goto_0
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTracking(Ljava/lang/String;III)V

    .line 4691
    iget-object v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;

    move-result-object v1

    .line 4692
    .local v1, "clientId":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_2

    .line 4694
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v3, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->remove(Landroid/os/WorkSource;)Z

    .line 4695
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 4696
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 4698
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4701
    :cond_2
    iget v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    if-le v2, v7, :cond_3

    .line 4702
    iget v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    sub-int/2addr v2, v7

    iput v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    goto :goto_1

    .line 4704
    :cond_3
    iput v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    .line 4705
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4707
    .end local v1    # "clientId":Ljava/lang/String;
    :goto_1
    monitor-exit v0

    .line 4708
    goto :goto_3

    .line 4707
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .end local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_2
    throw v1

    .line 4713
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .restart local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :pswitch_2
    goto :goto_3

    .line 4715
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decrementing Invalid Wakelock type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4717
    :goto_3
    const/4 v0, -0x1

    iput v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    .line 4718
    monitor-exit p1

    .line 4719
    return-void

    .line 4718
    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private emergencyDial(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;ILcom/android/internal/telephony/UUSInfo;ZLandroid/os/Message;)V
    .locals 13
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "callprofile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "clirMode"    # I
    .param p4, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p5, "isVideoCall"    # Z
    .param p6, "result"    # Landroid/os/Message;

    .line 2885
    move-object/from16 v1, p6

    const-string v0, "> "

    const/4 v2, 0x1

    if-eqz p5, :cond_1

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_2:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2886
    const-class v3, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2887
    invoke-virtual {p0, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2888
    .local v4, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v4}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2889
    const-string v0, "emergencyDial, no imsProxy"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 2890
    return-void

    .line 2892
    :cond_0
    const/16 v3, 0x88e

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v3, v1, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v3

    .line 2896
    .local v3, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2900
    :try_start_0
    iget v5, v3, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->vtEmergencyDial(ILjava/lang/String;Landroid/telephony/ims/ImsCallProfile;ILcom/android/internal/telephony/UUSInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2904
    goto :goto_0

    .line 2902
    :catch_0
    move-exception v0

    .line 2903
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "vtEmergencyDial"

    invoke-direct {p0, v2, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2905
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 2908
    .end local v3    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v4    # "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    :cond_1
    const-class v3, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 2909
    .local v7, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v7}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    .line 2910
    :cond_2
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2911
    const/16 v3, 0x827

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v3, v1, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v3

    .line 2916
    .restart local v3    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2920
    :try_start_1
    iget v8, v3, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2921
    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2920
    move-object v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    invoke-virtual/range {v7 .. v12}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->emergencyDial(ILjava/lang/String;Landroid/telephony/ims/ImsCallProfile;ILcom/android/internal/telephony/UUSInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2925
    goto :goto_1

    .line 2923
    :catch_1
    move-exception v0

    .line 2924
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "emergencyDial"

    invoke-direct {p0, v2, v4, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2927
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_3
    :goto_1
    return-void
.end method

.method private findAndRemoveRequestFromList(I)Lcom/mediatek/ims/ril/RILRequest;
    .locals 3
    .param p1, "serial"    # I

    .line 4771
    const/4 v0, 0x0

    .line 4772
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4773
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ril/RILRequest;

    move-object v0, v2

    .line 4774
    if-eqz v0, :cond_0

    .line 4775
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4777
    :cond_0
    monitor-exit v1

    .line 4779
    return-object v0

    .line 4777
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getAospServiceHalVersion(I)Lcom/android/internal/telephony/HalVersion;
    .locals 1
    .param p0, "interfaceVersion"    # I

    .line 5803
    packed-switch p0, :pswitch_data_0

    .line 5809
    sget-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_4:Lcom/android/internal/telephony/HalVersion;

    return-object v0

    .line 5808
    :pswitch_0
    sget-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_4:Lcom/android/internal/telephony/HalVersion;

    return-object v0

    .line 5807
    :pswitch_1
    sget-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_3:Lcom/android/internal/telephony/HalVersion;

    return-object v0

    .line 5806
    :pswitch_2
    sget-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    return-object v0

    .line 5805
    :pswitch_3
    sget-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    return-object v0

    .line 5804
    :pswitch_4
    sget-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDeafultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 0
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 4434
    if-nez p1, :cond_0

    .line 4435
    iget-object p1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 4438
    :cond_0
    return-object p1
.end method

.method private getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;
    .locals 7
    .param p1, "result"    # Landroid/os/Message;

    .line 5339
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    .line 5340
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5341
    return-object v3

    .line 5344
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIsMobileNetworkSupported:Z

    if-nez v0, :cond_1

    .line 5346
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleProxyNotExist(Landroid/os/Message;)V

    .line 5347
    return-object v3

    .line 5350
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    if-eqz v0, :cond_2

    .line 5351
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    return-object v0

    .line 5354
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    .line 5355
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_3

    .line 5364
    :cond_3
    :try_start_0
    sget-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 5367
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v0, v0, v5

    .line 5366
    invoke-static {v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getService(Ljava/lang/String;Z)Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5371
    goto :goto_0

    .line 5368
    :catch_0
    move-exception v0

    .line 5369
    .local v0, "e":Ljava/lang/Exception;
    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5370
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMtkRadioProxy getServiceV3_0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 5373
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    if-eqz v0, :cond_5

    .line 5375
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    sget-object v5, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5376
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5377
    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->castFrom(Landroid/os/IHwInterface;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMtkRadioProxy mMtkRadioVersion = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 5380
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    if-eqz v0, :cond_4

    .line 5381
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkServiceCookies:Landroid/util/SparseArray;

    .line 5383
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v5

    .line 5382
    invoke-interface {v0, v2, v5, v6}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 5384
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioResponse:Lcom/mediatek/ims/ril/ImsRadioResponse;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioIndication:Lcom/mediatek/ims/ril/ImsRadioIndication;

    .line 5385
    invoke-interface {v0, v2, v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setResponseFunctionsIms(Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication;)V

    goto :goto_1

    .line 5387
    :cond_4
    const-string v0, "getMtkRadioProxy setResponseFunctionsMtkV3_0: error, castFrom failed."

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5392
    :goto_1
    goto :goto_2

    .line 5389
    :catch_1
    move-exception v0

    .line 5390
    .restart local v0    # "e":Ljava/lang/Exception;
    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMtkRadioProxy setResponseFunctionsMtkV3_0: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 5395
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    if-nez v0, :cond_7

    .line 5396
    if-eqz p1, :cond_6

    .line 5397
    nop

    .line 5398
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 5397
    invoke-static {p1, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 5399
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 5403
    :cond_6
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    invoke-virtual {v0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->removeMessages(I)V

    .line 5404
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkServiceCookies:Landroid/util/SparseArray;

    .line 5406
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 5405
    invoke-virtual {v2, v4, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 5404
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5410
    :cond_7
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    return-object v0

    .line 5358
    :cond_8
    :goto_3
    const-string v0, "getMtkRadioProxy service died, we try again later"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 5359
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleProxyNotExist(Landroid/os/Message;)V

    .line 5360
    return-object v3
.end method

.method private getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;
    .locals 9
    .param p1, "result"    # Landroid/os/Message;

    .line 1331
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    .line 1332
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1333
    return-object v3

    .line 1335
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIsMobileNetworkSupported:Z

    if-nez v0, :cond_1

    .line 1337
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleProxyNotExist(Landroid/os/Message;)V

    .line 1338
    return-object v3

    .line 1341
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-eqz v0, :cond_2

    .line 1342
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    return-object v0

    .line 1345
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-nez v0, :cond_3

    .line 1359
    const-string v0, "getRadioProxy service died, we try again later"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1360
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleProxyNotExist(Landroid/os/Message;)V

    .line 1361
    return-object v3

    .line 1362
    :cond_3
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRadioProxy, phone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not valid or is disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1370
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleProxyNotExist(Landroid/os/Message;)V

    .line 1371
    return-object v3

    .line 1376
    :cond_4
    const/4 v0, 0x1

    :try_start_0
    sget-object v5, Lcom/mediatek/ims/ril/ImsRILAdapter;->IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 1377
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v5, v5, v6

    .line 1376
    invoke-static {v5, v1}, Landroid/hardware/radio/V1_0/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1378
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    sget-object v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1381
    goto :goto_0

    .line 1437
    :catch_0
    move-exception v2

    goto/16 :goto_4

    .line 1379
    :catch_1
    move-exception v5

    .line 1380
    .local v5, "e":Ljava/util/NoSuchElementException;
    :try_start_1
    const-string v6, "getRadioProxy: NoSuchElementException "

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 1383
    .end local v5    # "e":Ljava/util/NoSuchElementException;
    :goto_0
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-eqz v5, :cond_a

    .line 1384
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v5}, Landroid/hardware/radio/V1_5/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_5/IRadio;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1385
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v5}, Landroid/hardware/radio/V1_5/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_5/IRadio;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1386
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    sget-object v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1387
    :cond_5
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v5}, Landroid/hardware/radio/V1_4/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_4/IRadio;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 1388
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v5}, Landroid/hardware/radio/V1_4/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_4/IRadio;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1389
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    sget-object v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1390
    :cond_6
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v5}, Landroid/hardware/radio/V1_3/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_3/IRadio;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1391
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v5}, Landroid/hardware/radio/V1_3/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_3/IRadio;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1392
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    sget-object v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1393
    :cond_7
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v5}, Landroid/hardware/radio/V1_2/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_2/IRadio;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 1394
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v5}, Landroid/hardware/radio/V1_2/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_2/IRadio;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1395
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    sget-object v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1396
    :cond_8
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v5}, Landroid/hardware/radio/V1_1/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_1/IRadio;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 1397
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v5}, Landroid/hardware/radio/V1_1/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_1/IRadio;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1398
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    sget-object v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    :cond_9
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRadioProxy: mRadioVersion "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 1403
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRadioProxy: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1404
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-eqz v2, :cond_e

    .line 1405
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceCookies:Landroid/util/SparseArray;

    .line 1406
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v6

    .line 1405
    invoke-interface {v2, v5, v6, v7}, Landroid/hardware/radio/V1_0/IRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 1407
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioResponse:Lcom/mediatek/ims/ril/RadioResponseImpl;

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioIndication:Lcom/mediatek/ims/ril/RadioIndicationImpl;

    invoke-interface {v2, v5, v6}, Landroid/hardware/radio/V1_0/IRadio;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 1408
    const-string v2, "setResponseFunctionsIms"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1410
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    if-eqz v2, :cond_f

    .line 1411
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    monitor-enter v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1413
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queue size  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1414
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v5

    sub-int/2addr v5, v0

    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_b

    .line 1415
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->remove(I)V

    .line 1414
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 1417
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queue size  after "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1418
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 1419
    const-string v6, "reset pending switch request"

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1421
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 1422
    invoke-virtual {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v6

    .line 1423
    .local v6, "pendingDqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v7, v6, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 1424
    .local v7, "pendingRequest":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v8, v7, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_c

    .line 1425
    iget-object v8, v7, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v8, v3, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1426
    iget-object v8, v7, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 1429
    :cond_c
    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v8}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->resetSendChldRequest()V

    .line 1430
    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v8, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setPendingRequest(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 1432
    .end local v5    # "i":I
    .end local v6    # "pendingDqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v7    # "pendingRequest":Lcom/mediatek/ims/ril/RILRequest;
    :cond_d
    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception v5

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .end local p1    # "result":Landroid/os/Message;
    :try_start_3
    throw v5

    .line 1435
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .restart local p1    # "result":Landroid/os/Message;
    :cond_e
    const-string v2, "getRadioProxy: mRadioProxy == null"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1440
    :cond_f
    :goto_3
    goto :goto_5

    .line 1438
    .local v2, "e":Ljava/lang/Exception;
    :goto_4
    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1439
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RadioProxy getService/setResponseFunctions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 1442
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-nez v2, :cond_11

    .line 1443
    if-eqz p1, :cond_10

    .line 1444
    nop

    .line 1445
    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 1444
    invoke-static {p1, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1446
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1449
    :cond_10
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    invoke-virtual {v0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->removeMessages(I)V

    .line 1450
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceCookies:Landroid/util/SparseArray;

    .line 1452
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1451
    invoke-virtual {v2, v4, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1450
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1456
    :cond_11
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    return-object v0
.end method

.method private static getResponseForTimedOutRILRequest(Lcom/mediatek/ims/ril/RILRequest;)Ljava/lang/Object;
    .locals 9
    .param p0, "rr"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 825
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 827
    :cond_0
    const/4 v0, 0x0

    .line 828
    .local v0, "timeoutResponse":Ljava/lang/Object;
    iget v1, p0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 830
    :pswitch_0
    new-instance v2, Landroid/telephony/ModemActivityInfo;

    .line 831
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v1

    new-array v7, v1, [I

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/telephony/ModemActivityInfo;-><init>(JII[II)V

    move-object v0, v2

    .line 834
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x87
        :pswitch_0
    .end packed-switch
.end method

.method public static getTelephonyRILTimingHistograms()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation

    .line 556
    sget-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v0

    .line 557
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 558
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 559
    new-instance v3, Landroid/telephony/TelephonyHistogram;

    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyHistogram;

    invoke-direct {v3, v4}, Landroid/telephony/TelephonyHistogram;-><init>(Landroid/telephony/TelephonyHistogram;)V

    .line 560
    .local v3, "entry":Landroid/telephony/TelephonyHistogram;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    nop

    .end local v3    # "entry":Landroid/telephony/TelephonyHistogram;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 562
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 563
    return-object v1

    .line 562
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;
    .locals 3
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 4442
    if-eqz p1, :cond_0

    .line 4443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4446
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleChldRelatedRequest(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)V
    .locals 11
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 3976
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    monitor-enter v0

    .line 3977
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v1

    .line 3979
    .local v1, "queueSize":I
    if-lez v1, :cond_5

    .line 3980
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->get()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    .line 3981
    .local v2, "dqrr2":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v3, v2, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 3982
    .local v3, "rr2":Lcom/mediatek/ims/ril/RILRequest;
    iget v4, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v5, 0x31

    const/4 v6, 0x0

    if-ne v4, v5, :cond_2

    .line 3984
    const-string v4, "DTMF queue isn\'t 0, first request is START, send stop dtmf and pending switch"

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3986
    const/4 v4, 0x1

    if-le v1, v4, :cond_0

    .line 3987
    const/4 v5, 0x2

    .local v5, "j":I
    goto :goto_0

    .line 3990
    .end local v5    # "j":I
    :cond_0
    const/4 v5, 0x1

    .line 3992
    .restart local v5    # "j":I
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "queue size  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v8}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3993
    add-int/lit8 v7, v1, -0x1

    .local v7, "i":I
    :goto_1
    if-lt v7, v5, :cond_1

    .line 3994
    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v8, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->remove(I)V

    .line 3993
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 3996
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "queue size  after "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v9}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3997
    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v8}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v8

    if-ne v8, v4, :cond_3

    .line 3999
    const-string v4, "add dummy stop dtmf request"

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4000
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v8, 0x32

    invoke-direct {p0, v8, v6, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v4

    .line 4003
    .local v4, "rr3":Lcom/mediatek/ims/ril/RILRequest;
    iget v8, v4, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 4004
    .local v8, "myParam":[Ljava/lang/Object;
    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v9, v4, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v9

    .line 4006
    .local v9, "dqrr3":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v10, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v10}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->stop()V

    .line 4007
    iget-object v10, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v10, v9}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->add(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 4008
    .end local v4    # "rr3":Lcom/mediatek/ims/ril/RILRequest;
    .end local v8    # "myParam":[Ljava/lang/Object;
    .end local v9    # "dqrr3":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    goto :goto_3

    .line 4013
    .end local v5    # "j":I
    .end local v7    # "i":I
    :cond_2
    const-string v4, "DTMF queue isn\'t 0, first request is STOP, penging switch"

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4014
    const/4 v5, 0x1

    .line 4015
    .restart local v5    # "j":I
    add-int/lit8 v4, v1, -0x1

    move v7, v4

    .restart local v7    # "i":I
    :goto_2
    if-lt v7, v5, :cond_3

    .line 4016
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->remove(I)V

    .line 4015
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 4022
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 4023
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    .line 4024
    .local v4, "pendingDqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v8, v4, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 4025
    .local v8, "pendingRequest":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v9, v8, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v9, :cond_4

    .line 4026
    iget-object v9, v8, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v9, v6, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4027
    iget-object v6, v8, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 4031
    .end local v4    # "pendingDqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v8    # "pendingRequest":Lcom/mediatek/ims/ril/RILRequest;
    :cond_4
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4, p1, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    .line 4032
    .local v4, "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setPendingRequest(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 4033
    .end local v2    # "dqrr2":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v3    # "rr2":Lcom/mediatek/ims/ril/RILRequest;
    .end local v4    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    goto :goto_4

    .line 4034
    .end local v5    # "j":I
    .end local v7    # "i":I
    :cond_5
    const-string v2, "DTMF queue is 0, send switch Immediately"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4035
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setSendChldRequest()V

    .line 4036
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    .line 4037
    .local v2, "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 4039
    .end local v1    # "queueSize":I
    .end local v2    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :goto_4
    monitor-exit v0

    .line 4040
    return-void

    .line 4039
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "service"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 1638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 1639
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->resetAllProxyAndRequestList(I)V

    .line 1640
    return-void
.end method

.method private handleProxyNotExist(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .line 5331
    if-eqz p1, :cond_0

    .line 5332
    nop

    .line 5333
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 5332
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 5334
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 5336
    :cond_0
    return-void
.end method

.method private handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "service"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 1631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 1632
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1633
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->resetAllProxyAndRequestList(I)V

    .line 1634
    return-void
.end method

.method private internalAddConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 8
    .param p1, "confCallId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "callIdToAdd"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 3888
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3890
    .local v1, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3891
    const/16 v0, 0x82a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v7

    .line 3895
    .local v7, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3896
    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " confCallId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " address = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3897
    invoke-static {p2}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " callIdToAdd ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3895
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3902
    :try_start_0
    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x1

    move v4, p1

    move-object v5, p2

    move v6, p3

    .end local p1    # "confCallId":I
    .end local p2    # "address":Ljava/lang/String;
    .end local p3    # "callIdToAdd":I
    .local v4, "confCallId":I
    .local v5, "address":Ljava/lang/String;
    .local v6, "callIdToAdd":I
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->controlImsConferenceCallMember(IIILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3906
    goto :goto_1

    .line 3904
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v4    # "confCallId":I
    .end local v5    # "address":Ljava/lang/String;
    .end local v6    # "callIdToAdd":I
    .restart local p1    # "confCallId":I
    .restart local p2    # "address":Ljava/lang/String;
    .restart local p3    # "callIdToAdd":I
    :catch_1
    move-exception v0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object p1, v0

    .line 3905
    .end local p2    # "address":Ljava/lang/String;
    .end local p3    # "callIdToAdd":I
    .restart local v4    # "confCallId":I
    .restart local v5    # "address":Ljava/lang/String;
    .restart local v6    # "callIdToAdd":I
    .local p1, "e":Ljava/lang/Exception;
    :goto_0
    const/4 p2, 0x1

    const-string p3, "addImsConferenceCallMember"

    invoke-direct {p0, p2, p3, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 3890
    .end local v4    # "confCallId":I
    .end local v5    # "address":Ljava/lang/String;
    .end local v6    # "callIdToAdd":I
    .end local v7    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .local p1, "confCallId":I
    .restart local p2    # "address":Ljava/lang/String;
    .restart local p3    # "callIdToAdd":I
    :cond_0
    move v4, p1

    move-object v5, p2

    move v6, p3

    .line 3908
    .end local p1    # "confCallId":I
    .end local p2    # "address":Ljava/lang/String;
    .end local p3    # "callIdToAdd":I
    .restart local v4    # "confCallId":I
    .restart local v5    # "address":Ljava/lang/String;
    .restart local v6    # "callIdToAdd":I
    :goto_1
    return-void
.end method

.method private internalImsEct(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 3948
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3949
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3951
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3952
    const/16 v1, 0x823

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3956
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3960
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->imsEctCommand(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3963
    goto :goto_0

    .line 3961
    :catch_0
    move-exception v2

    .line 3962
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "imsEctCommand"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3965
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private internalRemoveConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 8
    .param p1, "confCallId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "callIdToRemove"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 3919
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3921
    .local v1, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3922
    const/16 v0, 0x82b

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v7

    .line 3926
    .local v7, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3927
    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " confCallId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " address = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3928
    invoke-static {p2}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " callIdToRemove ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3926
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3933
    :try_start_0
    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    move v4, p1

    move-object v5, p2

    move v6, p3

    .end local p1    # "confCallId":I
    .end local p2    # "address":Ljava/lang/String;
    .end local p3    # "callIdToRemove":I
    .local v4, "confCallId":I
    .local v5, "address":Ljava/lang/String;
    .local v6, "callIdToRemove":I
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->controlImsConferenceCallMember(IIILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3937
    goto :goto_1

    .line 3935
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v4    # "confCallId":I
    .end local v5    # "address":Ljava/lang/String;
    .end local v6    # "callIdToRemove":I
    .restart local p1    # "confCallId":I
    .restart local p2    # "address":Ljava/lang/String;
    .restart local p3    # "callIdToRemove":I
    :catch_1
    move-exception v0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object p1, v0

    .line 3936
    .end local p2    # "address":Ljava/lang/String;
    .end local p3    # "callIdToRemove":I
    .restart local v4    # "confCallId":I
    .restart local v5    # "address":Ljava/lang/String;
    .restart local v6    # "callIdToRemove":I
    .local p1, "e":Ljava/lang/Exception;
    :goto_0
    const/4 p2, 0x1

    const-string p3, "removeImsConferenceCallMember"

    invoke-direct {p0, p2, p3, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 3921
    .end local v4    # "confCallId":I
    .end local v5    # "address":Ljava/lang/String;
    .end local v6    # "callIdToRemove":I
    .end local v7    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .local p1, "confCallId":I
    .restart local p2    # "address":Ljava/lang/String;
    .restart local p3    # "callIdToRemove":I
    :cond_0
    move v4, p1

    move-object v5, p2

    move v6, p3

    .line 3939
    .end local p1    # "confCallId":I
    .end local p2    # "address":Ljava/lang/String;
    .end local p3    # "callIdToRemove":I
    .restart local v4    # "confCallId":I
    .restart local v5    # "address":Ljava/lang/String;
    .restart local v6    # "callIdToRemove":I
    :goto_1
    return-void
.end method

.method private isMtkRadioExVersion4_0()Z
    .locals 8

    .line 939
    sget-object v0, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->DESCRIPTOR:Ljava/lang/String;

    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->DESCRIPTOR:Ljava/lang/String;

    sget-object v2, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;->DESCRIPTOR:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 944
    .local v0, "serviceNames":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 945
    .local v4, "serviceName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK:[Ljava/lang/String;

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 946
    const/4 v1, 0x1

    return v1

    .line 944
    .end local v4    # "serviceName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 949
    :cond_1
    return v2
.end method

.method private isRadioVersion2_0()Z
    .locals 8

    .line 924
    sget-object v0, Landroid/hardware/radio/modem/IRadioModem;->DESCRIPTOR:Ljava/lang/String;

    sget-object v1, Landroid/hardware/radio/sim/IRadioSim;->DESCRIPTOR:Ljava/lang/String;

    sget-object v2, Landroid/hardware/radio/voice/IRadioVoice;->DESCRIPTOR:Ljava/lang/String;

    sget-object v3, Landroid/hardware/radio/network/IRadioNetwork;->DESCRIPTOR:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 930
    .local v0, "serviceNames":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 931
    .local v4, "serviceName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK_IMS:[Ljava/lang/String;

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 932
    const/4 v1, 0x1

    return v1

    .line 930
    .end local v4    # "serviceName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 935
    :cond_1
    return v2
.end method

.method private static mtkServiceToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "service"    # I

    .line 5835
    packed-switch p0, :pswitch_data_0

    .line 5853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5847
    :pswitch_0
    const-string v0, "MTK_MODEM"

    return-object v0

    .line 5849
    :pswitch_1
    const-string v0, "MTK_VOICE"

    return-object v0

    .line 5851
    :pswitch_2
    const-string v0, "MTK_IMS_SERVICE"

    return-object v0

    .line 5837
    :pswitch_3
    const-string v0, "MTK_RADIO"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;
    .locals 1
    .param p1, "request"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 1625
    invoke-static {p1, p2, p3}, Lcom/mediatek/ims/ril/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 1626
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->addRequest(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 1627
    return-object v0
.end method

.method private processResponseDoneInternal(Lcom/mediatek/ims/ril/RILRequest;IILjava/lang/Object;)V
    .locals 7
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;
    .param p2, "rilError"    # I
    .param p3, "responseType"    # I
    .param p4, "ret"    # Ljava/lang/Object;

    .line 4321
    const-string v0, "< "

    if-nez p2, :cond_0

    .line 4323
    iget v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v2, 0x858

    if-eq v1, v2, :cond_1

    iget v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v2, 0x859

    if-eq v1, v2, :cond_1

    iget v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v2, 0x85a

    if-eq v1, v2, :cond_1

    iget v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v2, 0x85b

    if-eq v1, v2, :cond_1

    iget v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v2, 0x85d    # 3.0E-42f

    if-eq v1, v2, :cond_1

    .line 4328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4329
    invoke-static {v1, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4328
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 4334
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4337
    invoke-virtual {p1, p2, p4}, Lcom/mediatek/ims/ril/RILRequest;->onError(ILjava/lang/Object;)V

    .line 4339
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    iget v5, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    move v4, p2

    move-object v6, p4

    .end local p2    # "rilError":I
    .end local p4    # "ret":Ljava/lang/Object;
    .local v4, "rilError":I
    .local v6, "ret":Ljava/lang/Object;
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnRilSolicitedResponse(IIIILjava/lang/Object;)V

    .line 4342
    iget p2, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 p4, 0xf

    if-eq p2, p4, :cond_2

    iget p2, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 p4, 0x10

    if-eq p2, p4, :cond_2

    iget p2, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 p4, 0x34

    if-eq p2, p4, :cond_2

    iget p2, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 p4, 0x48

    if-ne p2, p4, :cond_3

    .line 4346
    :cond_2
    const-string p2, "clear mIsSendChldRequest"

    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4347
    iget-object p2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {p2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->resetSendChldRequest()V

    .line 4350
    :cond_3
    if-nez p3, :cond_4

    .line 4351
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 4353
    :cond_4
    invoke-virtual {p1}, Lcom/mediatek/ims/ril/RILRequest;->release()V

    .line 4354
    return-void
.end method

.method private processResponseInternal(IIIIZ)Lcom/mediatek/ims/ril/RILRequest;
    .locals 4
    .param p1, "service"    # I
    .param p2, "serial"    # I
    .param p3, "error"    # I
    .param p4, "type"    # I
    .param p5, "isProprietary"    # Z

    .line 4224
    const/4 v0, 0x0

    .line 4226
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    const/4 v1, 0x1

    if-ne p4, v1, :cond_1

    .line 4227
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4228
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ril/RILRequest;

    move-object v0, v2

    .line 4229
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4230
    if-nez v0, :cond_0

    .line 4231
    const-string v1, "IMS_RILA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected solicited ack response! sn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4233
    :cond_0
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 4235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Ack from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->serviceToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4236
    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4235
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4239
    :goto_0
    return-object v0

    .line 4229
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 4242
    :cond_1
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->findAndRemoveRequestFromList(I)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 4243
    if-nez v0, :cond_2

    .line 4244
    const-string v1, "IMS_RILA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processResponse: Unexpected response! serial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4246
    const/4 v1, 0x0

    return-object v1

    .line 4250
    :cond_2
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->addToRilHistogram(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 4252
    const/4 v1, 0x2

    if-ne p4, v1, :cond_4

    .line 4253
    if-eqz p5, :cond_3

    .line 4254
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendMtkAck(I)V

    goto :goto_1

    .line 4256
    :cond_3
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendAck(I)V

    .line 4259
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response received from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->serviceToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4260
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Sending ack to ril.cpp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4259
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4270
    :cond_4
    iget v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 4272
    :pswitch_0
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setRadioState(IZ)V

    .line 4277
    :goto_2
    nop

    .line 4282
    return-object v0

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_0
    .end packed-switch
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "request"    # I

    .line 5012
    sparse-switch p0, :sswitch_data_0

    .line 5142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown request>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5112
    :sswitch_0
    const-string v0, "RIL_REQUEST_SET_BARRING_SEPCIFIC_CALL"

    return-object v0

    .line 5110
    :sswitch_1
    const-string v0, "RIL_REQUEST_GET_BARRING_SEPCIFIC_CALL"

    return-object v0

    .line 5140
    :sswitch_2
    const-string v0, "RIL_REQUEST_VIDEO_RINGTONE_EVENT"

    return-object v0

    .line 5138
    :sswitch_3
    const-string v0, "RIL_REQUEST_SET_CALL_ADDITIONAL_INFO"

    return-object v0

    .line 5037
    :sswitch_4
    const-string v0, "ECC_REDIAL_APPROVE"

    return-object v0

    .line 5135
    :sswitch_5
    const-string v0, "RIL_REQUEST_TOGGLE_RTT_AUDIO_INDICATION"

    return-object v0

    .line 5133
    :sswitch_6
    const-string v0, "RIL_REQUEST_QUERY_SSAC_STATUS"

    return-object v0

    .line 5131
    :sswitch_7
    const-string v0, "RIL_REQUEST_SET_IMS_CALL_MODE"

    return-object v0

    .line 5129
    :sswitch_8
    const-string v0, "RIL_REQUEST_SIP_HEADER_REPORT"

    return-object v0

    .line 5127
    :sswitch_9
    const-string v0, "RIL_REQUEST_SET_SIP_HEADER"

    return-object v0

    .line 5024
    :sswitch_a
    const-string v0, "HANGUP_WITH_REASON"

    return-object v0

    .line 5124
    :sswitch_b
    const-string v0, "RIL_REQUEST_QUERY_VOPS_STATUS"

    return-object v0

    .line 5123
    :sswitch_c
    const-string v0, "RIL_REQUEST_RTT_MODIFY_REQUST_RESPONSE"

    return-object v0

    .line 5121
    :sswitch_d
    const-string v0, "RIL_REQUEST_SEND_RTT_TEXT"

    return-object v0

    .line 5119
    :sswitch_e
    const-string v0, "RIL_REQUEST_SEND_RTT_MODIFY_REQUEST"

    return-object v0

    .line 5117
    :sswitch_f
    const-string v0, "RIL_REQUEST_SET_RTT_MODE"

    return-object v0

    .line 5084
    :sswitch_10
    const-string v0, "CDMA_SMS_ACKNOWLEDGE_EX"

    return-object v0

    .line 5083
    :sswitch_11
    const-string v0, "RIL_REQUEST_SMS_ACKNOWLEDGE_EX"

    return-object v0

    .line 5108
    :sswitch_12
    const-string v0, "SETUP_XCAP_USER_AGENT_STRING"

    return-object v0

    .line 5114
    :sswitch_13
    const-string v0, "RIL_REQUEST_SET_RCS_UA_ENABLE"

    return-object v0

    .line 5107
    :sswitch_14
    const-string v0, "RIL_REQUEST_RESET_SUPP_SERV"

    return-object v0

    .line 5106
    :sswitch_15
    const-string v0, "RIL_REQUEST_GET_XCAP_STATUS"

    return-object v0

    .line 5050
    :sswitch_16
    const-string v0, "IMS_CONFIG_GET_RESOURCE_CAP"

    return-object v0

    .line 5048
    :sswitch_17
    const-string v0, "IMS_CONFIG_GET_PROVISION"

    return-object v0

    .line 5046
    :sswitch_18
    const-string v0, "IMS_CONFIG_SET_PROVISION"

    return-object v0

    .line 5044
    :sswitch_19
    const-string v0, "IMS_CONFIG_GET_FEATURE"

    return-object v0

    .line 5042
    :sswitch_1a
    const-string v0, "IMS_CONFIG_SET_FEATURE"

    return-object v0

    .line 5054
    :sswitch_1b
    const-string v0, "RIL_REQUEST_SET_IMS_BEARER_NOTIFICATION"

    return-object v0

    .line 5082
    :sswitch_1c
    const-string v0, "RIL_REQUEST_IMS_SEND_SMS_EX"

    return-object v0

    .line 5080
    :sswitch_1d
    const-string v0, "ImsRILConstants.RIL_REQUEST_SET_MD_IMSCFG"

    return-object v0

    .line 5105
    :sswitch_1e
    const-string v0, "RIL_REQUEST_RUN_GBA"

    return-object v0

    .line 5104
    :sswitch_1f
    const-string v0, "SET_CALL_FORWARD_IN_TIME_SLOT"

    return-object v0

    .line 5103
    :sswitch_20
    const-string v0, "QUERY_CALL_FORWARD_IN_TIME_SLOT"

    return-object v0

    .line 5101
    :sswitch_21
    const-string v0, "SET_COLR"

    return-object v0

    .line 5099
    :sswitch_22
    const-string v0, "SET_COLP"

    return-object v0

    .line 5079
    :sswitch_23
    const-string v0, "RIL_REQUEST_SET_VOICE_DOMAIN_PREFERENCE"

    return-object v0

    .line 5100
    :sswitch_24
    const-string v0, "GET_COLR"

    return-object v0

    .line 5098
    :sswitch_25
    const-string v0, "GET_COLP"

    return-object v0

    .line 5097
    :sswitch_26
    const-string v0, "SET_CLIP"

    return-object v0

    .line 5068
    :sswitch_27
    const-string v0, "IMS_VT_DIAL"

    return-object v0

    .line 5067
    :sswitch_28
    const-string v0, "IMS_DIAL"

    return-object v0

    .line 5065
    :sswitch_29
    const-string v0, "SET_IMS_REGISTRATION_REPORT"

    return-object v0

    .line 5066
    :sswitch_2a
    const-string v0, "PULL_CALL"

    return-object v0

    .line 5063
    :sswitch_2b
    const-string v0, "SET_WFC_PROFILE"

    return-object v0

    .line 5062
    :sswitch_2c
    const-string v0, "CANCEL_USSI"

    return-object v0

    .line 5061
    :sswitch_2d
    const-string v0, "SEND_USSI"

    return-object v0

    .line 5060
    :sswitch_2e
    const-string v0, "VT_DIAL_WITH_SIP_URI"

    return-object v0

    .line 5075
    :sswitch_2f
    const-string v0, "RIL_REQUEST_REMOVE_IMS_CONFERENCE_CALL_MEMBER"

    return-object v0

    .line 5073
    :sswitch_30
    const-string v0, "RIL_REQUEST_ADD_IMS_CONFERENCE_CALL_MEMBER"

    return-object v0

    .line 5071
    :sswitch_31
    const-string v0, "RIL_REQUEST_CONFERENCE_DIAL"

    return-object v0

    .line 5070
    :sswitch_32
    const-string v0, "ImsRILConstants.RIL_REQUEST_SET_IMS_RTP_REPORT"

    return-object v0

    .line 5069
    :sswitch_33
    const-string v0, "IMS_EMERGENCY_DIAL"

    return-object v0

    .line 5058
    :sswitch_34
    const-string v0, "RESUME_CALL"

    return-object v0

    .line 5057
    :sswitch_35
    const-string v0, "HOLD_CALL"

    return-object v0

    .line 5056
    :sswitch_36
    const-string v0, "IMS_ECT"

    return-object v0

    .line 5055
    :sswitch_37
    const-string v0, "IMS_DEREG_NOTIFICATION"

    return-object v0

    .line 5052
    :sswitch_38
    const-string v0, "IMS_BEARER_STATE_CONFIRM"

    return-object v0

    .line 5040
    :sswitch_39
    const-string v0, "SET_PROVISION_VALUE"

    return-object v0

    .line 5039
    :sswitch_3a
    const-string v0, "GET_PROVISION_VALUE"

    return-object v0

    .line 5038
    :sswitch_3b
    const-string v0, "SET_IMSCFG"

    return-object v0

    .line 5036
    :sswitch_3c
    const-string v0, "VIDEO_CALL_ACCEPT"

    return-object v0

    .line 5035
    :sswitch_3d
    const-string v0, "SET_VIWIFI_ENABLE"

    return-object v0

    .line 5034
    :sswitch_3e
    const-string v0, "SET_VILTE_ENABLE"

    return-object v0

    .line 5033
    :sswitch_3f
    const-string v0, "SET_WFC_ENABLE"

    return-object v0

    .line 5032
    :sswitch_40
    const-string v0, "SET_VOLTE_ENABLE"

    return-object v0

    .line 5031
    :sswitch_41
    const-string v0, "SET_IMS_ENABLE"

    return-object v0

    .line 5059
    :sswitch_42
    const-string v0, "SET_ECC_LIST"

    return-object v0

    .line 5025
    :sswitch_43
    const-string v0, "HANGUP_ALL"

    return-object v0

    .line 5077
    :sswitch_44
    const-string v0, "RIL_REQUEST_SET_CALL_INDICATION"

    return-object v0

    .line 5022
    :sswitch_45
    const-string v0, "GET_ACTIVITY_INFO"

    return-object v0

    .line 5028
    :sswitch_46
    const-string v0, "SHUTDOWN"

    return-object v0

    .line 5020
    :sswitch_47
    const-string v0, "EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 5021
    :sswitch_48
    const-string v0, "EXPLICIT_CALL_TRANSFER"

    return-object v0

    .line 5096
    :sswitch_49
    const-string v0, "QUERY_CLIP"

    return-object v0

    .line 5027
    :sswitch_4a
    const-string v0, "SET_MUTE"

    return-object v0

    .line 5018
    :sswitch_4b
    const-string v0, "DTMF_STOP"

    return-object v0

    .line 5017
    :sswitch_4c
    const-string v0, "DTMF_START"

    return-object v0

    .line 5095
    :sswitch_4d
    const-string v0, "CHANGE_BARRING_PASSWORD"

    return-object v0

    .line 5094
    :sswitch_4e
    const-string v0, "SET_FACILITY_LOCK"

    return-object v0

    .line 5093
    :sswitch_4f
    const-string v0, "QUERY_FACILITY_LOCK"

    return-object v0

    .line 5013
    :sswitch_50
    const-string v0, "ANSWER"

    return-object v0

    .line 5092
    :sswitch_51
    const-string v0, "SET_CALL_WAITING"

    return-object v0

    .line 5091
    :sswitch_52
    const-string v0, "QUERY_CALL_WAITING"

    return-object v0

    .line 5088
    :sswitch_53
    const-string v0, "SET_CALL_FORWARD"

    return-object v0

    .line 5087
    :sswitch_54
    const-string v0, "QUERY_CALL_FORWARD_STATUS"

    return-object v0

    .line 5090
    :sswitch_55
    const-string v0, "SET_CLIR"

    return-object v0

    .line 5089
    :sswitch_56
    const-string v0, "GET_CLIR"

    return-object v0

    .line 5016
    :sswitch_57
    const-string v0, "DTMF"

    return-object v0

    .line 5026
    :sswitch_58
    const-string v0, "LAST_CALL_FAIL_CAUSE"

    return-object v0

    .line 5014
    :sswitch_59
    const-string v0, "CONFERENCE"

    return-object v0

    .line 5030
    :sswitch_5a
    const-string v0, "SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    return-object v0

    .line 5023
    :sswitch_5b
    const-string v0, "HANGUP"

    return-object v0

    .line 5015
    :sswitch_5c
    const-string v0, "DIAL"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_5c
        0xc -> :sswitch_5b
        0xf -> :sswitch_5a
        0x10 -> :sswitch_59
        0x12 -> :sswitch_58
        0x18 -> :sswitch_57
        0x1f -> :sswitch_56
        0x20 -> :sswitch_55
        0x21 -> :sswitch_54
        0x22 -> :sswitch_53
        0x23 -> :sswitch_52
        0x24 -> :sswitch_51
        0x28 -> :sswitch_50
        0x2a -> :sswitch_4f
        0x2b -> :sswitch_4e
        0x2c -> :sswitch_4d
        0x31 -> :sswitch_4c
        0x32 -> :sswitch_4b
        0x35 -> :sswitch_4a
        0x37 -> :sswitch_49
        0x48 -> :sswitch_48
        0x63 -> :sswitch_47
        0x81 -> :sswitch_46
        0x87 -> :sswitch_45
        0x7e0 -> :sswitch_44
        0x7e3 -> :sswitch_43
        0x7ee -> :sswitch_42
        0x815 -> :sswitch_41
        0x816 -> :sswitch_40
        0x817 -> :sswitch_3f
        0x818 -> :sswitch_3e
        0x819 -> :sswitch_3d
        0x81c -> :sswitch_3c
        0x81d -> :sswitch_3b
        0x81e -> :sswitch_3a
        0x81f -> :sswitch_39
        0x820 -> :sswitch_38
        0x822 -> :sswitch_37
        0x823 -> :sswitch_36
        0x824 -> :sswitch_35
        0x825 -> :sswitch_34
        0x827 -> :sswitch_33
        0x828 -> :sswitch_32
        0x829 -> :sswitch_31
        0x82a -> :sswitch_30
        0x82b -> :sswitch_2f
        0x82c -> :sswitch_2e
        0x82d -> :sswitch_2d
        0x82e -> :sswitch_2c
        0x82f -> :sswitch_2b
        0x830 -> :sswitch_2a
        0x831 -> :sswitch_29
        0x832 -> :sswitch_28
        0x833 -> :sswitch_27
        0x837 -> :sswitch_26
        0x838 -> :sswitch_25
        0x839 -> :sswitch_24
        0x84a -> :sswitch_23
        0x84b -> :sswitch_22
        0x84c -> :sswitch_21
        0x84d -> :sswitch_20
        0x84e -> :sswitch_1f
        0x84f -> :sswitch_1e
        0x850 -> :sswitch_1d
        0x855 -> :sswitch_1c
        0x857 -> :sswitch_1b
        0x858 -> :sswitch_1a
        0x859 -> :sswitch_19
        0x85a -> :sswitch_18
        0x85b -> :sswitch_17
        0x85d -> :sswitch_16
        0x873 -> :sswitch_15
        0x874 -> :sswitch_14
        0x876 -> :sswitch_13
        0x877 -> :sswitch_12
        0x87a -> :sswitch_11
        0x87c -> :sswitch_10
        0x87e -> :sswitch_f
        0x87f -> :sswitch_e
        0x880 -> :sswitch_d
        0x881 -> :sswitch_c
        0x882 -> :sswitch_b
        0x883 -> :sswitch_a
        0x884 -> :sswitch_9
        0x885 -> :sswitch_8
        0x886 -> :sswitch_7
        0x887 -> :sswitch_6
        0x888 -> :sswitch_5
        0x889 -> :sswitch_4
        0x88a -> :sswitch_3
        0x88b -> :sswitch_2
        0x88c -> :sswitch_1
        0x88d -> :sswitch_0
    .end sparse-switch
.end method

.method private declared-synchronized resetAllProxyAndRequestList(I)V
    .locals 11
    .param p1, "service"    # I

    monitor-enter p0

    .line 953
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetAllProxyAndRequestList, service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMtkRadioVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    .line 954
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 953
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 957
    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    if-nez p1, :cond_0

    goto :goto_4

    .line 963
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-gt v4, v1, :cond_2

    .line 964
    if-nez v4, :cond_1

    goto :goto_1

    .line 965
    :cond_1
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ims/ril/RadioServiceProxy;

    invoke-virtual {v5}, Lcom/mediatek/ims/ril/RadioServiceProxy;->clear()V

    .line 967
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceCookies:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 963
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 969
    .end local v4    # "i":I
    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-gt v4, v0, :cond_5

    .line 970
    if-nez v4, :cond_3

    goto :goto_3

    .line 971
    :cond_3
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxiesMtk:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    invoke-virtual {v5}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->clear()V

    .line 973
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkServiceCookies:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 969
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 958
    .end local v4    # "i":I
    :cond_4
    :goto_4
    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 959
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceCookies:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 960
    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 961
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkServiceCookies:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 979
    :cond_5
    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setRadioState(IZ)V

    .line 981
    invoke-static {}, Lcom/mediatek/ims/ril/RILRequest;->resetSerial()V

    .line 983
    invoke-virtual {p0, v5, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->clearRequestList(IZ)V

    .line 988
    if-eqz p1, :cond_c

    if-nez p1, :cond_6

    goto/16 :goto_9

    .line 999
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5
    const-wide/16 v5, 0x3e8

    if-gt v4, v1, :cond_9

    .line 1000
    if-nez v4, :cond_7

    goto :goto_6

    .line 1001
    :cond_7
    invoke-virtual {p0, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v7

    .line 1002
    .local v7, "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    .line 1003
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/HalVersion;

    sget-object v9, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1004
    invoke-virtual {v7}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1005
    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    .line 1006
    const/16 v10, 0xb

    invoke-virtual {v9, v10, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    .line 1005
    invoke-virtual {v8, v9, v5, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 999
    .end local v7    # "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    :cond_8
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1010
    .end local v4    # "i":I
    :cond_9
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-gt v1, v0, :cond_e

    .line 1011
    if-nez v1, :cond_a

    goto :goto_8

    .line 1012
    :cond_a
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v4

    .line 1013
    .local v4, "serviceProxy":Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    .line 1014
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/HalVersion;

    sget-object v8, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1015
    invoke-virtual {v4}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1016
    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    .line 1017
    const/16 v9, 0xc

    invoke-virtual {v8, v9, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 1016
    invoke-virtual {v7, v8, v5, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1010
    .end local v4    # "serviceProxy":Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    :cond_b
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 989
    .end local v1    # "i":I
    :cond_c
    :goto_9
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    .line 990
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 991
    .local v0, "mtkProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_d

    .line 993
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->notifyImsServiceReady()V

    goto :goto_a

    .line 995
    :cond_d
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    .line 996
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 995
    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    .end local v0    # "mtkProxy":Landroid/hidl/base/V1_0/IBase;
    :goto_a
    nop

    .line 1022
    :cond_e
    monitor-exit p0

    return-void

    .line 952
    .end local p1    # "service":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static responseToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "response"    # I

    .line 4922
    sparse-switch p0, :sswitch_data_0

    .line 5007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown response>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5006
    :sswitch_0
    const-string v0, "RIL_UNSOL_MT_SIP_INVITE_INFO"

    return-object v0

    .line 4959
    :sswitch_1
    const-string v0, "RIL_UNSOL_IMS_REG_FLAG_IND"

    return-object v0

    .line 5002
    :sswitch_2
    const-string v0, "RIL_UNSOL_VIDEO_RINGTONE_EVENT_IND"

    return-object v0

    .line 4984
    :sswitch_3
    const-string v0, "RIL_UNSOL_IMS_DIALOG_INDICATION"

    return-object v0

    .line 5004
    :sswitch_4
    const-string v0, "RIL_UNSOL_CALL_RAT_INDICATION"

    return-object v0

    .line 4998
    :sswitch_5
    const-string v0, "RIL_UNSOL_CALL_ADDITIONAL_INFO"

    return-object v0

    .line 5000
    :sswitch_6
    const-string v0, "RIL_UNSOL_SIP_HEADER"

    return-object v0

    .line 4996
    :sswitch_7
    const-string v0, "RIL_UNSOL_VOPS_INDICATION"

    return-object v0

    .line 4994
    :sswitch_8
    const-string v0, "RIL_UNSOL_AUDIO_INDICATION"

    return-object v0

    .line 4992
    :sswitch_9
    const-string v0, "RIL_UNSOL_RTT_MODIFY_REQUEST_RECEIVE"

    return-object v0

    .line 4990
    :sswitch_a
    const-string v0, "RIL_UNSOL_RTT_CAPABILITY_INDICATION"

    return-object v0

    .line 4988
    :sswitch_b
    const-string v0, "RIL_UNSOL_RTT_TEXT_RECEIVE"

    return-object v0

    .line 4986
    :sswitch_c
    const-string v0, "RIL_UNSOL_RTT_MODIFY_RESPONSE"

    return-object v0

    .line 4978
    :sswitch_d
    const-string v0, "RIL_UNSOL_NO_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 4976
    :sswitch_e
    const-string v0, "UNSOL_CDMA_NEW_SMS_EX"

    return-object v0

    .line 4974
    :sswitch_f
    const-string v0, "RIL_UNSOL_RESPONSE_NEW_SMS_EX"

    return-object v0

    .line 4972
    :sswitch_10
    const-string v0, "RIL_UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT_EX"

    return-object v0

    .line 4962
    :sswitch_11
    const-string v0, "RIL_UNSOL_IMS_DATA_INFO_NOTIFY"

    return-object v0

    .line 4944
    :sswitch_12
    const-string v0, "ImsRILConstants.RIL_UNSOL_ON_VOLTE_SUBSCRIPTION"

    return-object v0

    .line 4970
    :sswitch_13
    const-string v0, "IMS_CONFIG_LOADED"

    return-object v0

    .line 4966
    :sswitch_14
    const-string v0, "IMS_CONFIG_CHANGED"

    return-object v0

    .line 4968
    :sswitch_15
    const-string v0, "IMS_FEATURE_CHANGED"

    return-object v0

    .line 4964
    :sswitch_16
    const-string v0, "DYNAMIC_IMS_SWITCH_COMPLETE"

    return-object v0

    .line 4982
    :sswitch_17
    const-string v0, "RIL_UNSOL_LTE_MESSAGE_WAITING_INDICATION"

    return-object v0

    .line 4980
    :sswitch_18
    const-string v0, "RIL_UNSOL_IMS_CONFERENCE_INFO_INDICATION"

    return-object v0

    .line 4956
    :sswitch_19
    const-string v0, "IMS_DEREG_DONE"

    return-object v0

    .line 4961
    :sswitch_1a
    const-string v0, "RIL_UNSOL_IMS_BEARER_INIT"

    return-object v0

    .line 4960
    :sswitch_1b
    const-string v0, "IMS_BEARER_STATE_NOTIFY"

    return-object v0

    .line 4958
    :sswitch_1c
    const-string v0, "VOLTE_SETTING"

    return-object v0

    .line 4957
    :sswitch_1d
    const-string v0, "ECT_INDICATION"

    return-object v0

    .line 4955
    :sswitch_1e
    const-string v0, "IMS_DISABLE_START"

    return-object v0

    .line 4954
    :sswitch_1f
    const-string v0, "IMS_ENABLE_START"

    return-object v0

    .line 4953
    :sswitch_20
    const-string v0, "IMS_DISABLE_DONE"

    return-object v0

    .line 4952
    :sswitch_21
    const-string v0, "IMS_ENABLE_DONE"

    return-object v0

    .line 4950
    :sswitch_22
    const-string v0, "IMS_REGISTRATION_INFO"

    return-object v0

    .line 4948
    :sswitch_23
    const-string v0, "IMS_EVENT_PACKAGE_INDICATION"

    return-object v0

    .line 4942
    :sswitch_24
    const-string v0, "ON_XUI"

    return-object v0

    .line 4941
    :sswitch_25
    const-string v0, "UNSOL_IMS_RTP_INFO"

    return-object v0

    .line 4940
    :sswitch_26
    const-string v0, "GET_PROVISION_DONE"

    return-object v0

    .line 4939
    :sswitch_27
    const-string v0, "ON_USSI"

    return-object v0

    .line 4938
    :sswitch_28
    const-string v0, "VIDEO_CAPABILITY_INDICATOR"

    return-object v0

    .line 4936
    :sswitch_29
    const-string v0, "CALLMOD_CHANGE_INDICATOR"

    return-object v0

    .line 4934
    :sswitch_2a
    const-string v0, "SIP_CALL_PROGRESS_INDICATOR"

    return-object v0

    .line 4932
    :sswitch_2b
    const-string v0, "ECONF_RESULT_INDICATION"

    return-object v0

    .line 4928
    :sswitch_2c
    const-string v0, "CALL_INFO_INDICATION"

    return-object v0

    .line 4951
    :sswitch_2d
    const-string v0, "SPEECH_CODEC_INFO"

    return-object v0

    .line 4931
    :sswitch_2e
    const-string v0, "CIPHER_INDICATION"

    return-object v0

    .line 4930
    :sswitch_2f
    const-string v0, "INCOMING_CALL_INDICATION"

    return-object v0

    .line 4927
    :sswitch_30
    const-string v0, "RIL_UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 4925
    :sswitch_31
    const-string v0, "RIL_UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 4946
    :sswitch_32
    const-string v0, "RIL_UNSOL_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 4923
    :sswitch_33
    const-string v0, "RADIO_STATE_CHANGED"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_33
        0x3f3 -> :sswitch_32
        0x400 -> :sswitch_31
        0x409 -> :sswitch_30
        0xbc7 -> :sswitch_2f
        0xbd0 -> :sswitch_2e
        0xbd3 -> :sswitch_2d
        0xbd7 -> :sswitch_2c
        0xbd8 -> :sswitch_2b
        0xbd9 -> :sswitch_2a
        0xbda -> :sswitch_29
        0xbdb -> :sswitch_28
        0xbdc -> :sswitch_27
        0xbdd -> :sswitch_26
        0xbde -> :sswitch_25
        0xbdf -> :sswitch_24
        0xbe0 -> :sswitch_23
        0xbe1 -> :sswitch_22
        0xbe2 -> :sswitch_21
        0xbe3 -> :sswitch_20
        0xbe4 -> :sswitch_1f
        0xbe5 -> :sswitch_1e
        0xbe6 -> :sswitch_1d
        0xbe7 -> :sswitch_1c
        0xbe9 -> :sswitch_1b
        0xbeb -> :sswitch_1a
        0xbec -> :sswitch_19
        0xc11 -> :sswitch_18
        0xc12 -> :sswitch_17
        0xc13 -> :sswitch_16
        0xc14 -> :sswitch_15
        0xc15 -> :sswitch_14
        0xc16 -> :sswitch_13
        0xc26 -> :sswitch_12
        0xc27 -> :sswitch_11
        0xc28 -> :sswitch_10
        0xc29 -> :sswitch_f
        0xc2c -> :sswitch_e
        0xc2d -> :sswitch_d
        0xc2e -> :sswitch_c
        0xc2f -> :sswitch_b
        0xc30 -> :sswitch_a
        0xc31 -> :sswitch_9
        0xc32 -> :sswitch_8
        0xc33 -> :sswitch_7
        0xc34 -> :sswitch_6
        0xc36 -> :sswitch_5
        0xc38 -> :sswitch_4
        0xc39 -> :sswitch_3
        0xc3a -> :sswitch_2
        0xc3b -> :sswitch_1
        0xc3c -> :sswitch_0
    .end sparse-switch
.end method

.method static retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p0, "req"    # I
    .param p1, "ret"    # Ljava/lang/Object;

    .line 5147
    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    .line 5152
    :cond_0
    instance-of v0, p1, [I

    const-string v1, ", "

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v0, :cond_2

    .line 5153
    move-object v0, p1

    check-cast v0, [I

    .line 5154
    .local v0, "intArray":[I
    array-length v4, v0

    .line 5155
    .local v4, "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5156
    .local v5, "sb":Ljava/lang/StringBuilder;
    if-lez v4, :cond_1

    .line 5157
    const/4 v3, 0x0

    .line 5158
    .local v3, "i":I
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .local v6, "i":I
    aget v3, v0, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5159
    :goto_0
    if-ge v6, v4, :cond_1

    .line 5160
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    aget v6, v0, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v6, v7

    goto :goto_0

    .line 5163
    .end local v7    # "i":I
    :cond_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5164
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5165
    .local v0, "s":Ljava/lang/String;
    goto :goto_2

    .end local v0    # "s":Ljava/lang/String;
    .end local v4    # "length":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 5166
    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    .line 5167
    .local v0, "strings":[Ljava/lang/String;
    array-length v4, v0

    .line 5168
    .restart local v4    # "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5169
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    if-lez v4, :cond_3

    .line 5170
    const/4 v3, 0x0

    .line 5171
    .restart local v3    # "i":I
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .restart local v6    # "i":I
    aget-object v3, v0, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5172
    :goto_1
    if-ge v6, v4, :cond_3

    .line 5173
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    aget-object v6, v0, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v7

    goto :goto_1

    .line 5176
    .end local v7    # "i":I
    :cond_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5177
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5178
    .local v0, "s":Ljava/lang/String;
    goto :goto_2

    .line 5179
    .end local v0    # "s":Ljava/lang/String;
    .end local v4    # "length":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5181
    .restart local v0    # "s":Ljava/lang/String;
    :goto_2
    return-object v0
.end method

.method private sendAck(I)V
    .locals 6
    .param p1, "service"    # I

    .line 4362
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x320

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/mediatek/ims/ril/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 4364
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->acquireWakeLock(Lcom/mediatek/ims/ril/RILRequest;I)V

    .line 4365
    const-string v1, "sendAck: "

    const-string v3, "sendAck"

    const-string v4, "IMS_RILA"

    if-nez p1, :cond_1

    .line 4366
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v2

    .line 4367
    .local v2, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v2, :cond_0

    .line 4369
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/radio/V1_0/IRadio;->responseAcknowledgement()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4373
    :goto_0
    goto :goto_1

    .line 4370
    :catch_0
    move-exception v4

    .line 4371
    .local v4, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    invoke-direct {p0, v5, v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 4375
    :cond_0
    const-string v1, "Error trying to send ack, radioProxy = null"

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4377
    .end local v2    # "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    :goto_1
    goto :goto_3

    .line 4378
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v2

    .line 4379
    .local v2, "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    invoke-virtual {v2}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 4381
    :try_start_1
    invoke-virtual {v2}, Lcom/mediatek/ims/ril/RadioServiceProxy;->responseAcknowledgement()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4385
    :goto_2
    goto :goto_3

    .line 4382
    :catch_1
    move-exception v4

    .line 4383
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-direct {p0, p1, v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 4387
    :cond_2
    const-string v1, "Error trying to send ack, serviceProxy is empty"

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4390
    .end local v2    # "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    :goto_3
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->release()V

    .line 4391
    return-void
.end method

.method private sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V
    .locals 11
    .param p1, "dqrr"    # Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    .line 4046
    iget-object v0, p1, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 4047
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    const-class v1, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 4048
    .local v1, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v2

    const-string v3, "] request: "

    const-string v4, "get RadioProxy null. (["

    const-string v5, ")"

    if-eqz v2, :cond_0

    .line 4049
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4050
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4049
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 4051
    return-void

    .line 4054
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "> "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " (by DtmfQueueRR)"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4057
    const/4 v2, 0x0

    .line 4058
    .local v2, "params":[Ljava/lang/Object;
    const/4 v6, 0x1

    :try_start_0
    iget v7, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, " params error. ("

    const-string v9, "request "

    const/4 v10, 0x0

    sparse-switch v7, :sswitch_data_0

    .line 4092
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4076
    :sswitch_0
    iget v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->explicitCallTransfer(I)V

    .line 4077
    goto/16 :goto_1

    .line 4066
    :sswitch_1
    iget-object v3, p1, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->params:[Ljava/lang/Object;

    .line 4067
    .end local v2    # "params":[Ljava/lang/Object;
    .local v3, "params":[Ljava/lang/Object;
    array-length v2, v3

    if-eq v2, v6, :cond_1

    .line 4068
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4069
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4068
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4071
    :cond_1
    aget-object v2, v3, v10

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4072
    .local v2, "gsmIndex":I
    iget v4, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v1, v4, v2}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->separateConnection(II)V

    .line 4074
    .end local v2    # "gsmIndex":I
    goto/16 :goto_1

    .line 4089
    .end local v3    # "params":[Ljava/lang/Object;
    .local v2, "params":[Ljava/lang/Object;
    :sswitch_2
    iget v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->stopDtmf(I)V

    .line 4090
    goto/16 :goto_1

    .line 4079
    :sswitch_3
    iget-object v3, p1, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->params:[Ljava/lang/Object;

    .line 4080
    .end local v2    # "params":[Ljava/lang/Object;
    .restart local v3    # "params":[Ljava/lang/Object;
    array-length v2, v3

    if-eq v2, v6, :cond_2

    .line 4081
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4082
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4081
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    goto :goto_1

    .line 4084
    :cond_2
    aget-object v2, v3, v10

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    .line 4085
    .local v2, "c":C
    iget v4, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->startDtmf(ILjava/lang/String;)V

    .line 4087
    .end local v2    # "c":C
    goto :goto_1

    .line 4063
    .end local v3    # "params":[Ljava/lang/Object;
    .local v2, "params":[Ljava/lang/Object;
    :sswitch_4
    iget v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->conference(I)V

    .line 4064
    goto :goto_1

    .line 4060
    :sswitch_5
    iget v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->switchWaitingOrHoldingAndActive(I)V

    .line 4061
    goto :goto_1

    .line 4092
    :goto_0
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4093
    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4092
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4098
    .end local v2    # "params":[Ljava/lang/Object;
    :goto_1
    goto :goto_2

    .line 4095
    :catch_0
    move-exception v2

    .line 4096
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DtmfQueueRR("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4097
    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4096
    invoke-direct {p0, v6, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4099
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_5
        0x10 -> :sswitch_4
        0x31 -> :sswitch_3
        0x32 -> :sswitch_2
        0x34 -> :sswitch_1
        0x48 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendMtkAck(I)V
    .locals 5
    .param p1, "service"    # I

    .line 4398
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x320

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/mediatek/ims/ril/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 4400
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->acquireWakeLock(Lcom/mediatek/ims/ril/RILRequest;I)V

    .line 4401
    const-string v1, "IMS_RILA"

    if-nez p1, :cond_2

    .line 4402
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v2

    .line 4403
    .local v2, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v2, :cond_1

    .line 4405
    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4406
    move-object v3, v2

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 4407
    invoke-interface {v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->responseAcknowledgementMtk()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4409
    :catch_0
    move-exception v3

    .line 4410
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "sendMtkAck"

    invoke-direct {p0, v1, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMtkAck: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 4412
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    goto :goto_1

    .line 4414
    :cond_1
    const-string v3, "Error trying to send MTK ack, MtkRadioProxy = null"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4416
    .end local v2    # "radioProxy":Landroid/hidl/base/V1_0/IBase;
    :goto_1
    goto :goto_3

    .line 4417
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v2

    .line 4418
    .local v2, "serviceProxy":Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    invoke-virtual {v2}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4420
    :try_start_1
    invoke-virtual {v2}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->responseAcknowledgementMtk()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4424
    :goto_2
    goto :goto_3

    .line 4421
    :catch_1
    move-exception v1

    .line 4422
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "sendAck"

    invoke-direct {p0, p1, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendAck: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 4426
    :cond_3
    const-string v3, "Error trying to send MTK ack, MtkRadioExServiceProxy is empty"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4430
    .end local v2    # "serviceProxy":Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    :goto_3
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->release()V

    .line 4431
    return-void
.end method

.method private static serviceToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "service"    # I

    .line 5814
    packed-switch p0, :pswitch_data_0

    .line 5830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5822
    :pswitch_0
    const-string v0, "NETWORK"

    return-object v0

    .line 5824
    :pswitch_1
    const-string v0, "MODEM"

    return-object v0

    .line 5826
    :pswitch_2
    const-string v0, "SIM"

    return-object v0

    .line 5828
    :pswitch_3
    const-string v0, "VOICE"

    return-object v0

    .line 5816
    :pswitch_4
    const-string v0, "RADIO"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public accept()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5230
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->accept(Landroid/os/Message;)V

    .line 5231
    return-void
.end method

.method public accept(Landroid/os/Message;)V
    .locals 5
    .param p1, "response"    # Landroid/os/Message;

    .line 1728
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 1729
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1730
    const/16 v1, 0x28

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1733
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1736
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->acceptCall(I)V

    .line 1737
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilAnswer(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1740
    goto :goto_0

    .line 1738
    :catch_0
    move-exception v2

    .line 1739
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "acceptCall"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1742
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public acceptVideoCall(II)V
    .locals 1
    .param p1, "videoMode"    # I
    .param p2, "callId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5321
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->acceptVideoCall(IILandroid/os/Message;)V

    .line 5322
    return-void
.end method

.method public acceptVideoCall(IILandroid/os/Message;)V
    .locals 5
    .param p1, "videoMode"    # I
    .param p2, "callId"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1754
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 1756
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1757
    const/16 v1, 0x81c

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1761
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1762
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " videoMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1761
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1766
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->videoCallAccept(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1769
    goto :goto_0

    .line 1767
    :catch_0
    move-exception v2

    .line 1768
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "acceptCall"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1771
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSmsEx(ZILandroid/os/Message;)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 4510
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4511
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4512
    const/16 v1, 0x87c

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4516
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4521
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->acknowledgeLastIncomingCdmaSmsEx(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4525
    goto :goto_0

    .line 4522
    :catch_0
    move-exception v2

    .line 4523
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "acknowledgeLastIncomingGsmSms"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4527
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 4489
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4490
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4491
    const/16 v1, 0x87a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4495
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4500
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->acknowledgeLastIncomingGsmSmsEx(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4504
    goto :goto_0

    .line 4501
    :catch_0
    move-exception v2

    .line 4502
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "acknowledgeLastIncomingGsmSms"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4506
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public approveEccRedial(IILandroid/os/Message;)V
    .locals 5
    .param p1, "approve"    # I
    .param p2, "callId"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1783
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 1785
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1786
    const/16 v1, 0x889

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1789
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1790
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " approve = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1789
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1794
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->eccRedialApprove(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1797
    goto :goto_0

    .line 1795
    :catch_0
    move-exception v2

    .line 1796
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "approveEccRedial"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1799
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public cancelPendingUssi(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 3060
    const-string v0, "persist.vendor.ims.ussi.ap"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3062
    const-string v0, "Wrap cancelPendingUssi"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3065
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3066
    return-void

    .line 3069
    :cond_0
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3070
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3071
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3072
    const/16 v1, 0x82e

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3076
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3077
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3076
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3081
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->cancelUssi(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3084
    goto :goto_0

    .line 3082
    :catch_0
    move-exception v2

    .line 3083
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "cancelUssi"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3086
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public clearRequestList(IZ)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    .line 4749
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4750
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4751
    .local v1, "count":I
    if-eqz p2, :cond_0

    .line 4752
    const-string v2, "IMS_RILA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearRequestList  mWakeLockCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mRequestList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4756
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 4757
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/ril/RILRequest;

    .line 4758
    .local v3, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz p2, :cond_1

    .line 4759
    const-string v4, "IMS_RILA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4760
    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4759
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4762
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/mediatek/ims/ril/RILRequest;->onError(ILjava/lang/Object;)V

    .line 4763
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 4764
    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RILRequest;->release()V

    .line 4756
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4766
    .end local v2    # "i":I
    .end local v3    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 4767
    .end local v1    # "count":I
    monitor-exit v0

    .line 4768
    return-void

    .line 4767
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public conference(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .line 1944
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 1945
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1946
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1949
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1952
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleChldRelatedRequest(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)V

    .line 1954
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    return-void
.end method

.method public conferenceDial([Ljava/lang/String;IZLandroid/os/Message;)V
    .locals 5
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isVideoCall"    # Z
    .param p4, "result"    # Landroid/os/Message;

    .line 2941
    if-nez p1, :cond_0

    .line 2942
    const-string v0, "Participants MUST NOT be null in conferenceDial"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 2943
    return-void

    .line 2946
    :cond_0
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2947
    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2949
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2950
    const/16 v1, 0x829

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2954
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2955
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " clirMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isVideoCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2954
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2960
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->conferenceDial(I[Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2964
    goto :goto_0

    .line 2961
    :catch_0
    move-exception v2

    .line 2962
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "IMS_RILA"

    const-string v4, "conferenceDial failed"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    const/4 v3, 0x1

    const-string v4, "conferenceDial"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2966
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public deregisterIms(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .line 2096
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->deregisterImsWithCause(ILandroid/os/Message;)V

    .line 2097
    return-void
.end method

.method public deregisterImsWithCause(ILandroid/os/Message;)V
    .locals 5
    .param p1, "cause"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2108
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 2109
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 2110
    const/16 v1, 0x822

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2114
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2115
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2114
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2119
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2120
    move-object v3, v0

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2121
    invoke-interface {v3, v4, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->imsDeregNotification(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2125
    :cond_0
    goto :goto_0

    .line 2123
    :catch_0
    move-exception v3

    .line 2124
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "imsDeregNotification"

    invoke-direct {p0, v2, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2127
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 2830
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 2831
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "response"    # Landroid/os/Message;

    .line 2845
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "> "

    if-nez v0, :cond_1

    .line 2846
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 2847
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2848
    const/16 v3, 0x832

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v3, p4, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v3

    .line 2853
    .local v3, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2856
    :try_start_0
    iget v2, v3, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->dial(ILjava/lang/String;ILcom/android/internal/telephony/UUSInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2859
    goto :goto_0

    .line 2857
    :catch_0
    move-exception v2

    .line 2858
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "dial"

    invoke-direct {p0, v1, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2861
    .end local v0    # "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    goto :goto_1

    .line 2863
    :cond_1
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2865
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2866
    const/16 v3, 0x826

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v3, p4, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v3

    .line 2871
    .restart local v3    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2874
    :try_start_1
    iget v2, v3, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->dialWithSipUri(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2877
    goto :goto_1

    .line 2875
    :catch_1
    move-exception v2

    .line 2876
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v4, "dialWithSipUri"

    invoke-direct {p0, v1, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2880
    .end local v0    # "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_2
    :goto_1
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .line 1862
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 1863
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1864
    const/16 v1, 0x48

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1868
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1871
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleChldRelatedRequest(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)V

    .line 1873
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    return-void
.end method

.method public forceHangup(I)V
    .locals 1
    .param p1, "callId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5309
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->forceHangup(ILandroid/os/Message;)V

    .line 5310
    return-void
.end method

.method public forceHangup(II)V
    .locals 2
    .param p1, "callId"    # I
    .param p2, "reason"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceHangup with reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5315
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->forceHangup(ILandroid/os/Message;)V

    .line 5316
    return-void
.end method

.method public forceHangup(ILandroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 3733
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3734
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3736
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3737
    const/16 v1, 0x7f2

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3740
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3745
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->forceReleaseCall(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3748
    goto :goto_0

    .line 3746
    :catch_0
    move-exception v2

    .line 3747
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "forceHangup"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3750
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getBarringCalls(ILandroid/os/Message;)V
    .locals 5
    .param p1, "serviceClass"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3606
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3607
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3609
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3610
    const/16 v1, 0x88c

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3613
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3615
    const-string v2, "getBarringCalls does not support"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3618
    if-eqz p2, :cond_0

    .line 3619
    nop

    .line 3621
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v2

    .line 3619
    const/4 v3, 0x0

    invoke-static {p2, v3, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3622
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3625
    :cond_0
    return-void

    .line 3629
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3630
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3629
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3635
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->getBarringCalls(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3638
    goto :goto_0

    .line 3636
    :catch_0
    move-exception v2

    .line 3637
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "getBarringCalls"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3640
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 3256
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 3257
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3258
    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3260
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3262
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->getClir(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3265
    goto :goto_0

    .line 3263
    :catch_0
    move-exception v2

    .line 3264
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "getCLIR"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3267
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getCOLP(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 3387
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3388
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3389
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3390
    const/16 v1, 0x838

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3394
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3398
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->getColp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3401
    goto :goto_0

    .line 3399
    :catch_0
    move-exception v2

    .line 3400
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "getCOLP"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3403
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getCOLR(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 3338
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3339
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3340
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3341
    const/16 v1, 0x839

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3345
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3349
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->getColr(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3352
    goto :goto_0

    .line 3350
    :catch_0
    move-exception v2

    .line 3351
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "getCOLR"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3354
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getImsCfgFeatureValue(IILandroid/os/Message;)V
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "network"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 2551
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2553
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2554
    const/16 v1, 0x859

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2558
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->getImsCfgFeatureValue(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2561
    goto :goto_0

    .line 2559
    :catch_0
    move-exception v2

    .line 2560
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "getImsCfgFeatureValue"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2563
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getImsCfgProvisionValue(ILandroid/os/Message;)V
    .locals 5
    .param p1, "configId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2594
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2596
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2597
    const/16 v1, 0x85b

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2601
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->getImsCfgProvisionValue(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2604
    goto :goto_0

    .line 2602
    :catch_0
    move-exception v2

    .line 2603
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "getImsCfgProvisionValue"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2606
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getImsCfgResourceCapValue(ILandroid/os/Message;)V
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2615
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2617
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2618
    const/16 v1, 0x85d    # 3.0E-42f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2622
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->getImsCfgResourceCapValue(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2625
    goto :goto_0

    .line 2623
    :catch_0
    move-exception v2

    .line 2624
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "getImsCfgResourceCapValue"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2627
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getLastCallFailCause(ILandroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5261
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getLastCallFailCause(Landroid/os/Message;)V

    .line 5262
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2728
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 2729
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2730
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2734
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2735
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2734
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2739
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->getLastCallFailCause(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2742
    goto :goto_0

    .line 2740
    :catch_0
    move-exception v2

    .line 2741
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "getLastCallFailCause"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2744
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getMtkHalVersion(I)Lcom/android/internal/telephony/HalVersion;
    .locals 2
    .param p1, "service"    # I

    .line 5790
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HalVersion;

    .line 5791
    .local v0, "halVersion":Lcom/android/internal/telephony/HalVersion;
    if-nez v0, :cond_0

    .line 5792
    sget-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    .line 5794
    :cond_0
    return-object v0
.end method

.method public declared-synchronized getMtkRadioExServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    .locals 11
    .param p1, "service"    # I
    .param p2, "result"    # Landroid/os/Message;

    monitor-enter p0

    .line 5441
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMtkRadioExServiceProxy mPhoneId invalid, return empty RadioServiceProxy,, service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 5444
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxiesMtk:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 5447
    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIsCellularSupported:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 5448
    const-string v0, "getMtkRadioExServiceProxy: Not calling getService(): wifi-only"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5449
    if-eqz p2, :cond_1

    .line 5450
    nop

    .line 5451
    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 5450
    invoke-static {p2, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 5452
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 5455
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxiesMtk:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 5458
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxiesMtk:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    .line 5459
    .local v0, "mtkServiceProxy":Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isEmpty()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_3

    .line 5460
    monitor-exit p0

    return-object v0

    .line 5464
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :cond_3
    const/4 v3, 0x0

    .line 5465
    .local v3, "isDeclared":Z
    const/4 v4, 0x0

    .line 5466
    .local v4, "binder":Landroid/os/IBinder;
    const/4 v5, 0x0

    .line 5467
    .local v5, "serviceName":Ljava/lang/String;
    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    goto/16 :goto_0

    .line 5535
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :pswitch_0
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK:[Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 5536
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 5537
    invoke-static {v5}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v7

    move v3, v7

    .line 5538
    if-eqz v3, :cond_4

    .line 5539
    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    move-object v4, v7

    .line 5540
    if-eqz v4, :cond_4

    .line 5541
    move-object v7, v0

    check-cast v7, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    .line 5542
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/HalVersion;

    .line 5544
    invoke-static {v4}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    move-result-object v9

    .line 5541
    invoke-virtual {v7, v8, v9}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;)Lcom/android/internal/telephony/HalVersion;

    move-result-object v7

    .line 5545
    .local v7, "version":Lcom/android/internal/telephony/HalVersion;
    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5546
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMtkRadioExServiceProxy modem mMtkRadioVersion = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 5547
    .end local v7    # "version":Lcom/android/internal/telephony/HalVersion;
    goto/16 :goto_0

    .line 5551
    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :pswitch_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK:[Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 5553
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 5554
    invoke-static {v5}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v7

    move v3, v7

    .line 5555
    if-eqz v3, :cond_4

    .line 5556
    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    move-object v4, v7

    .line 5557
    if-eqz v4, :cond_4

    .line 5558
    move-object v7, v0

    check-cast v7, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    .line 5559
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/HalVersion;

    .line 5561
    invoke-static {v4}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    move-result-object v9

    .line 5558
    invoke-virtual {v7, v8, v9}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;)Lcom/android/internal/telephony/HalVersion;

    move-result-object v7

    .line 5562
    .restart local v7    # "version":Lcom/android/internal/telephony/HalVersion;
    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5563
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMtkRadioExServiceProxy, voice mMtkRadioVersion = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 5564
    .end local v7    # "version":Lcom/android/internal/telephony/HalVersion;
    goto :goto_0

    .line 5568
    :pswitch_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK:[Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 5569
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 5570
    invoke-static {v5}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v7

    move v3, v7

    .line 5571
    if-eqz v3, :cond_4

    .line 5572
    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    move-object v4, v7

    .line 5573
    if-eqz v4, :cond_4

    .line 5574
    move-object v7, v0

    check-cast v7, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    .line 5575
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/HalVersion;

    .line 5577
    invoke-static {v4}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    move-result-object v9

    .line 5574
    invoke-virtual {v7, v8, v9}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;)Lcom/android/internal/telephony/HalVersion;

    move-result-object v7

    .line 5578
    .restart local v7    # "version":Lcom/android/internal/telephony/HalVersion;
    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5579
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMtkRadioExServiceProxy, ims mMtkRadioVersion = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 5585
    .end local v7    # "version":Lcom/android/internal/telephony/HalVersion;
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isAidl()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 5586
    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 5616
    :pswitch_3
    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;

    move-object v8, v0

    check-cast v8, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 5617
    invoke-virtual {v8}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->getAidl()Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    move-result-object v8

    invoke-interface {v8}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 5616
    invoke-virtual {v7, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 5618
    move-object v7, v0

    check-cast v7, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->getAidl()Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExModemResponse:Lcom/mediatek/ims/ril/MtkRadioExModemResponse;

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExModemIndication:Lcom/mediatek/ims/ril/MtkRadioExModemIndication;

    .line 5619
    invoke-interface {v7, v8, v9}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;->setResponseFunctionsMtkIms(Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemResponse;Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemIndication;)V

    .line 5621
    goto :goto_1

    .line 5623
    :pswitch_4
    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;

    move-object v8, v0

    check-cast v8, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 5624
    invoke-virtual {v8}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->getAidl()Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    move-result-object v8

    invoke-interface {v8}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 5623
    invoke-virtual {v7, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 5625
    move-object v7, v0

    check-cast v7, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->getAidl()Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExVoiceResponse:Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExVoiceIndication:Lcom/mediatek/ims/ril/MtkRadioExVoiceIndication;

    .line 5626
    invoke-interface {v7, v8, v9}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->setResponseFunctionsMtkIms(Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceResponse;Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceIndication;)V

    .line 5628
    goto :goto_1

    .line 5630
    :pswitch_5
    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;

    move-object v8, v0

    check-cast v8, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 5631
    invoke-virtual {v8}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->getAidl()Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    move-result-object v8

    invoke-interface {v8}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 5630
    invoke-virtual {v7, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 5632
    move-object v7, v0

    check-cast v7, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->getAidl()Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExImsResponse:Lcom/mediatek/ims/ril/MtkRadioExImsResponse;

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExImsIndication:Lcom/mediatek/ims/ril/MtkRadioExImsIndication;

    .line 5633
    invoke-interface {v7, v8, v9}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setResponseFunctionsMtk(Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse;Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication;)V

    .line 5635
    :goto_1
    goto :goto_2

    .line 5637
    :cond_5
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    .line 5638
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/HalVersion;

    sget-object v8, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 5640
    const-string v7, "getMtkRadioExServiceProxy No AIDL, get HIDL instead."

    invoke-virtual {p0, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 5641
    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    if-nez v7, :cond_6

    .line 5642
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    .line 5645
    :cond_6
    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    if-eqz v7, :cond_7

    .line 5646
    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5647
    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/HalVersion;

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    invoke-virtual {v0, v7, v8}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Landroid/hidl/base/V1_0/IBase;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5652
    :cond_7
    monitor-exit p0

    return-object v0

    .line 5657
    .end local v3    # "isDeclared":Z
    .end local v4    # "binder":Landroid/os/IBinder;
    .end local v5    # "serviceName":Ljava/lang/String;
    :cond_8
    :goto_2
    goto :goto_3

    .line 5654
    :catch_0
    move-exception v3

    .line 5655
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->clear()V

    .line 5656
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMtkRadioExServiceProxy getService/setResponseFunctionsIms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 5659
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_3
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5661
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMtkRadioExServiceProxy: mtkServiceProxy is empty, mMtkRadioVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    .line 5662
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5661
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 5663
    if-eqz p2, :cond_9

    .line 5664
    nop

    .line 5665
    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v2

    .line 5664
    invoke-static {p2, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 5666
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5670
    :cond_9
    monitor-exit p0

    return-object v0

    .line 5440
    .end local v0    # "mtkServiceProxy":Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    .end local p1    # "service":I
    .end local p2    # "result":Landroid/os/Message;
    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    .locals 1
    .param p2, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Message;",
            ")TT;"
        }
    .end annotation

    .line 5427
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    if-ne p1, v0, :cond_0

    .line 5428
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    return-object v0

    .line 5430
    :cond_0
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    if-ne p1, v0, :cond_1

    .line 5431
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    return-object v0

    .line 5433
    :cond_1
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    if-ne p1, v0, :cond_2

    .line 5434
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    return-object v0

    .line 5436
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getRadioServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;
    .locals 10
    .param p1, "service"    # I
    .param p2, "result"    # Landroid/os/Message;

    monitor-enter p0

    .line 1058
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRadioServiceProxy mPhoneId invalid, return empty RadioServiceProxy,, service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1061
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioServiceProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1064
    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIsCellularSupported:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 1065
    const-string v0, "getRadioServiceProxy: Not calling getService(): wifi-only"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1066
    if-eqz p2, :cond_1

    .line 1067
    nop

    .line 1068
    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 1067
    invoke-static {p2, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1069
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1072
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioServiceProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1075
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioServiceProxy;

    .line 1077
    .local v0, "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/HalVersion;

    sget-object v5, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    .line 1078
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/HalVersion;

    sget-object v5, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/HalVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-eqz v3, :cond_4

    .line 1083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioServiceProxy, HIDL version, service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isEmpty()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_3

    .line 1085
    monitor-exit p0

    return-object v0

    .line 1087
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/HalVersion;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/ril/RadioServiceProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/V1_0/IRadio;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1094
    :try_start_4
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->getHidl()Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceCookies:Landroid/util/SparseArray;

    .line 1095
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    .line 1094
    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/radio/V1_0/IRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1098
    goto :goto_0

    .line 1096
    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :catch_0
    move-exception v1

    .line 1097
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRadioServiceProxy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1099
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1102
    :cond_4
    :try_start_6
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isEmpty()Z

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v3, :cond_5

    .line 1103
    monitor-exit p0

    return-object v0

    .line 1112
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :cond_5
    :try_start_7
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/HalVersion;

    sget-object v5, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    .line 1113
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/HalVersion;

    sget-object v5, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/HalVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1114
    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :cond_6
    const/4 v3, 0x0

    .line 1115
    .local v3, "binder":Landroid/os/IBinder;
    const/4 v5, 0x0

    .line 1116
    .local v5, "isDeclared":Z
    const/4 v6, 0x0

    .line 1117
    .local v6, "serviceName":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 1151
    :pswitch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/hardware/radio/network/IRadioNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK_IMS:[Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 1152
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1153
    .end local v6    # "serviceName":Ljava/lang/String;
    .local v7, "serviceName":Ljava/lang/String;
    invoke-static {v7}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v6

    .line 1154
    .end local v5    # "isDeclared":Z
    .local v6, "isDeclared":Z
    if-eqz v6, :cond_7

    .line 1155
    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 1156
    .end local v3    # "binder":Landroid/os/IBinder;
    .local v5, "binder":Landroid/os/IBinder;
    if-eqz v5, :cond_7

    .line 1157
    move-object v3, v0

    check-cast v3, Lcom/mediatek/ims/ril/RadioNetworkProxy;

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    .line 1158
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/HalVersion;

    .line 1160
    invoke-static {v5}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/network/IRadioNetwork;

    move-result-object v9

    .line 1157
    invoke-virtual {v3, v8, v9}, Lcom/mediatek/ims/ril/RadioNetworkProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/network/IRadioNetwork;)Lcom/android/internal/telephony/HalVersion;

    move-result-object v3

    .line 1161
    .local v3, "version":Lcom/android/internal/telephony/HalVersion;
    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRadioServiceProxy: nw mRadioVersion "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1163
    .end local v3    # "version":Lcom/android/internal/telephony/HalVersion;
    goto/16 :goto_1

    .line 1167
    .end local v7    # "serviceName":Ljava/lang/String;
    .local v3, "binder":Landroid/os/IBinder;
    .local v5, "isDeclared":Z
    .local v6, "serviceName":Ljava/lang/String;
    :pswitch_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/hardware/radio/modem/IRadioModem;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK_IMS:[Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 1168
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1169
    .end local v6    # "serviceName":Ljava/lang/String;
    .restart local v7    # "serviceName":Ljava/lang/String;
    invoke-static {v7}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v6

    .line 1170
    .end local v5    # "isDeclared":Z
    .local v6, "isDeclared":Z
    if-eqz v6, :cond_7

    .line 1171
    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 1172
    .end local v3    # "binder":Landroid/os/IBinder;
    .local v5, "binder":Landroid/os/IBinder;
    if-eqz v5, :cond_7

    .line 1173
    move-object v3, v0

    check-cast v3, Lcom/mediatek/ims/ril/RadioModemProxy;

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    .line 1174
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/HalVersion;

    .line 1176
    invoke-static {v5}, Landroid/hardware/radio/modem/IRadioModem$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/modem/IRadioModem;

    move-result-object v9

    .line 1173
    invoke-virtual {v3, v8, v9}, Lcom/mediatek/ims/ril/RadioModemProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/modem/IRadioModem;)Lcom/android/internal/telephony/HalVersion;

    move-result-object v3

    .line 1177
    .local v3, "version":Lcom/android/internal/telephony/HalVersion;
    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRadioServiceProxy: modem mRadioVersion "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1179
    .end local v3    # "version":Lcom/android/internal/telephony/HalVersion;
    goto/16 :goto_1

    .line 1183
    .end local v7    # "serviceName":Ljava/lang/String;
    .local v3, "binder":Landroid/os/IBinder;
    .local v5, "isDeclared":Z
    .local v6, "serviceName":Ljava/lang/String;
    :pswitch_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/hardware/radio/sim/IRadioSim;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK_IMS:[Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 1184
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1185
    .end local v6    # "serviceName":Ljava/lang/String;
    .restart local v7    # "serviceName":Ljava/lang/String;
    invoke-static {v7}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v6

    .line 1186
    .end local v5    # "isDeclared":Z
    .local v6, "isDeclared":Z
    if-eqz v6, :cond_7

    .line 1187
    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 1188
    .end local v3    # "binder":Landroid/os/IBinder;
    .local v5, "binder":Landroid/os/IBinder;
    if-eqz v5, :cond_7

    .line 1189
    move-object v3, v0

    check-cast v3, Lcom/mediatek/ims/ril/RadioSimProxy;

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    .line 1190
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/HalVersion;

    .line 1192
    invoke-static {v5}, Landroid/hardware/radio/sim/IRadioSim$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/sim/IRadioSim;

    move-result-object v9

    .line 1189
    invoke-virtual {v3, v8, v9}, Lcom/mediatek/ims/ril/RadioSimProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/sim/IRadioSim;)Lcom/android/internal/telephony/HalVersion;

    move-result-object v3

    .line 1193
    .local v3, "version":Lcom/android/internal/telephony/HalVersion;
    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRadioServiceProxy: sim mRadioVersion "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1195
    .end local v3    # "version":Lcom/android/internal/telephony/HalVersion;
    goto :goto_1

    .line 1199
    .end local v7    # "serviceName":Ljava/lang/String;
    .local v3, "binder":Landroid/os/IBinder;
    .local v5, "isDeclared":Z
    .local v6, "serviceName":Ljava/lang/String;
    :pswitch_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/hardware/radio/voice/IRadioVoice;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK_IMS:[Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 1200
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1201
    .end local v6    # "serviceName":Ljava/lang/String;
    .restart local v7    # "serviceName":Ljava/lang/String;
    invoke-static {v7}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v6

    .line 1202
    .end local v5    # "isDeclared":Z
    .local v6, "isDeclared":Z
    if-eqz v6, :cond_7

    .line 1203
    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 1204
    .end local v3    # "binder":Landroid/os/IBinder;
    .local v5, "binder":Landroid/os/IBinder;
    if-eqz v5, :cond_7

    .line 1205
    move-object v3, v0

    check-cast v3, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    .line 1206
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/HalVersion;

    .line 1208
    invoke-static {v5}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/voice/IRadioVoice;

    move-result-object v9

    .line 1205
    invoke-virtual {v3, v8, v9}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/voice/IRadioVoice;)Lcom/android/internal/telephony/HalVersion;

    move-result-object v3

    .line 1209
    .local v3, "version":Lcom/android/internal/telephony/HalVersion;
    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRadioServiceProxy: voice mRadioVersion "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1217
    .end local v3    # "version":Lcom/android/internal/telephony/HalVersion;
    .end local v5    # "binder":Landroid/os/IBinder;
    .end local v6    # "isDeclared":Z
    .end local v7    # "serviceName":Ljava/lang/String;
    :cond_7
    :goto_1
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/HalVersion;

    sget-object v5, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_e

    .line 1219
    :try_start_8
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 1220
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v3, v3, v5

    .line 1219
    invoke-static {v3, v4}, Landroid/hardware/radio/V1_0/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1221
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/util/NoSuchElementException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1224
    goto :goto_2

    .line 1222
    :catch_1
    move-exception v3

    .line 1223
    .local v3, "e":Ljava/util/NoSuchElementException;
    :try_start_9
    const-string v5, "getRadioServiceProxy: NoSuchElementException "

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 1225
    .end local v3    # "e":Ljava/util/NoSuchElementException;
    :goto_2
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-eqz v3, :cond_e

    .line 1226
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_6/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_6/IRadio;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1227
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_6/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_6/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1228
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1229
    :cond_8
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1230
    invoke-static {v3}, Landroid/hardware/radio/V1_5/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_5/IRadio;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 1231
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_5/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_5/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1232
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1233
    :cond_9
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1234
    invoke-static {v3}, Landroid/hardware/radio/V1_4/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_4/IRadio;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1235
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_4/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_4/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1236
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1237
    :cond_a
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1238
    invoke-static {v3}, Landroid/hardware/radio/V1_3/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_3/IRadio;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1239
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_3/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_3/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1240
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1241
    :cond_b
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1242
    invoke-static {v3}, Landroid/hardware/radio/V1_2/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_2/IRadio;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 1243
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_2/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_2/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1244
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1245
    :cond_c
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1246
    invoke-static {v3}, Landroid/hardware/radio/V1_1/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_1/IRadio;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 1247
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_1/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_1/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1248
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    :cond_d
    :goto_3
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/HalVersion;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-virtual {v0, v3, v5}, Lcom/mediatek/ims/ril/RadioServiceProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/V1_0/IRadio;)V

    .line 1251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRadioServiceProxy: mRadioVersion "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1256
    :cond_e
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 1257
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isAidl()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1258
    packed-switch p1, :pswitch_data_1

    goto/16 :goto_4

    .line 1272
    :pswitch_4
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;

    move-object v5, v0

    check-cast v5, Lcom/mediatek/ims/ril/RadioNetworkProxy;

    .line 1273
    invoke-virtual {v5}, Lcom/mediatek/ims/ril/RadioNetworkProxy;->getAidl()Landroid/hardware/radio/network/IRadioNetwork;

    move-result-object v5

    invoke-interface {v5}, Landroid/hardware/radio/network/IRadioNetwork;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 1272
    invoke-virtual {v3, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 1274
    move-object v3, v0

    check-cast v3, Lcom/mediatek/ims/ril/RadioNetworkProxy;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RadioNetworkProxy;->getAidl()Landroid/hardware/radio/network/IRadioNetwork;

    move-result-object v3

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNetworkResponse:Lcom/mediatek/ims/ril/NetworkResponse;

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNetworkIndication:Lcom/mediatek/ims/ril/NetworkIndication;

    invoke-interface {v3, v5, v6}, Landroid/hardware/radio/network/IRadioNetwork;->setResponseFunctions(Landroid/hardware/radio/network/IRadioNetworkResponse;Landroid/hardware/radio/network/IRadioNetworkIndication;)V

    .line 1276
    goto :goto_4

    .line 1278
    :pswitch_5
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;

    move-object v5, v0

    check-cast v5, Lcom/mediatek/ims/ril/RadioModemProxy;

    .line 1279
    invoke-virtual {v5}, Lcom/mediatek/ims/ril/RadioModemProxy;->getAidl()Landroid/hardware/radio/modem/IRadioModem;

    move-result-object v5

    invoke-interface {v5}, Landroid/hardware/radio/modem/IRadioModem;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 1278
    invoke-virtual {v3, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 1280
    move-object v3, v0

    check-cast v3, Lcom/mediatek/ims/ril/RadioModemProxy;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RadioModemProxy;->getAidl()Landroid/hardware/radio/modem/IRadioModem;

    move-result-object v3

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mModemResponse:Lcom/mediatek/ims/ril/ModemResponse;

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mModemIndication:Lcom/mediatek/ims/ril/ModemIndication;

    invoke-interface {v3, v5, v6}, Landroid/hardware/radio/modem/IRadioModem;->setResponseFunctions(Landroid/hardware/radio/modem/IRadioModemResponse;Landroid/hardware/radio/modem/IRadioModemIndication;)V

    .line 1282
    goto :goto_4

    .line 1284
    :pswitch_6
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;

    move-object v5, v0

    check-cast v5, Lcom/mediatek/ims/ril/RadioSimProxy;

    .line 1285
    invoke-virtual {v5}, Lcom/mediatek/ims/ril/RadioSimProxy;->getAidl()Landroid/hardware/radio/sim/IRadioSim;

    move-result-object v5

    invoke-interface {v5}, Landroid/hardware/radio/sim/IRadioSim;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 1284
    invoke-virtual {v3, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 1286
    move-object v3, v0

    check-cast v3, Lcom/mediatek/ims/ril/RadioSimProxy;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RadioSimProxy;->getAidl()Landroid/hardware/radio/sim/IRadioSim;

    move-result-object v3

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSimResponse:Lcom/mediatek/ims/ril/SimResponse;

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSimIndication:Lcom/mediatek/ims/ril/SimIndication;

    invoke-interface {v3, v5, v6}, Landroid/hardware/radio/sim/IRadioSim;->setResponseFunctions(Landroid/hardware/radio/sim/IRadioSimResponse;Landroid/hardware/radio/sim/IRadioSimIndication;)V

    .line 1288
    goto :goto_4

    .line 1290
    :pswitch_7
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;

    move-object v5, v0

    check-cast v5, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 1291
    invoke-virtual {v5}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->getAidl()Landroid/hardware/radio/voice/IRadioVoice;

    move-result-object v5

    invoke-interface {v5}, Landroid/hardware/radio/voice/IRadioVoice;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 1290
    invoke-virtual {v3, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 1292
    move-object v3, v0

    check-cast v3, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->getAidl()Landroid/hardware/radio/voice/IRadioVoice;

    move-result-object v3

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVoiceResponse:Lcom/mediatek/ims/ril/VoiceResponse;

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVoiceIndication:Lcom/mediatek/ims/ril/VoiceIndication;

    invoke-interface {v3, v5, v6}, Landroid/hardware/radio/voice/IRadioVoice;->setResponseFunctions(Landroid/hardware/radio/voice/IRadioVoiceResponse;Landroid/hardware/radio/voice/IRadioVoiceIndication;)V

    .line 1294
    :goto_4
    goto :goto_5

    .line 1297
    :cond_f
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/HalVersion;

    sget-object v5, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1300
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->getHidl()Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v3

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceCookies:Landroid/util/SparseArray;

    .line 1301
    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v6

    .line 1300
    invoke-interface {v3, v5, v6, v7}, Landroid/hardware/radio/V1_0/IRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 1302
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->getHidl()Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v3

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioResponse:Lcom/mediatek/ims/ril/RadioResponseImpl;

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioIndication:Lcom/mediatek/ims/ril/RadioIndicationImpl;

    invoke-interface {v3, v5, v6}, Landroid/hardware/radio/V1_0/IRadio;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    goto :goto_5

    .line 1298
    :cond_10
    new-instance v3, Ljava/lang/AssertionError;

    const-string v5, "getRadioServiceProxy shouldn\'t be HIDL with HAL 2.0"

    invoke-direct {v3, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    .end local p1    # "service":I
    .end local p2    # "result":Landroid/os/Message;
    throw v3

    .line 1307
    .restart local v0    # "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    .restart local p1    # "service":I
    .restart local p2    # "result":Landroid/os/Message;
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRadioServiceProxy: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->serviceToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/mediatek/ims/ril/ImsRILAdapter;->IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 1308
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is disabled"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1307
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1314
    :goto_5
    goto :goto_6

    .line 1311
    :catch_2
    move-exception v3

    .line 1312
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_a
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->clear()V

    .line 1313
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRadioServiceProxy getService/setResponseFunctions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 1316
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_6
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRadioServiceProxy: serviceProxy == null, mRadioVersion = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    .line 1319
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1318
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 1320
    if-eqz p2, :cond_12

    .line 1321
    nop

    .line 1322
    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v2

    .line 1321
    invoke-static {p2, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1323
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1327
    :cond_12
    monitor-exit p0

    return-object v0

    .line 1057
    .end local v0    # "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    .end local p1    # "service":I
    .end local p2    # "result":Landroid/os/Message;
    :catchall_0
    move-exception p1

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;
    .locals 1
    .param p2, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mediatek/ims/ril/RadioServiceProxy;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Message;",
            ")TT;"
        }
    .end annotation

    .line 1037
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/mediatek/ims/ril/RadioNetworkProxy;

    if-ne p1, v0, :cond_0

    .line 1038
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    return-object v0

    .line 1040
    :cond_0
    const-class v0, Lcom/mediatek/ims/ril/RadioModemProxy;

    if-ne p1, v0, :cond_1

    .line 1041
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    return-object v0

    .line 1043
    :cond_1
    const-class v0, Lcom/mediatek/ims/ril/RadioSimProxy;

    if-ne p1, v0, :cond_2

    .line 1044
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    return-object v0

    .line 1046
    :cond_2
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    if-ne p1, v0, :cond_3

    .line 1047
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    return-object v0

    .line 1049
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceDomainPreference(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2638
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2640
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2641
    const/16 v1, 0x849

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2645
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2649
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->getVoiceDomainPreference(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2652
    goto :goto_0

    .line 2650
    :catch_0
    move-exception v2

    .line 2651
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "getVoiceDomainPreference"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2654
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getXcapStatus(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 3527
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3528
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3529
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3530
    const/16 v1, 0x873

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3534
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3535
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3534
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3539
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->getXcapStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3542
    goto :goto_0

    .line 3540
    :catch_0
    move-exception v2

    .line 3541
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "getXcapStatus"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3544
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method handleDtmfQueueNext(I)V
    .locals 6
    .param p1, "serial"    # I

    .line 4107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDtmfQueueNext (serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4109
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    monitor-enter v0

    .line 4110
    const/4 v1, 0x0

    .line 4111
    .local v1, "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->-$$Nest$fgetmDtmfQueue(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4112
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->-$$Nest$fgetmDtmfQueue(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;)Ljava/util/Vector;

    move-result-object v3

    .line 4113
    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    .line 4114
    .local v3, "adqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    iget v4, v4, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    if-ne v4, p1, :cond_0

    .line 4115
    move-object v1, v3

    .line 4116
    goto :goto_1

    .line 4111
    .end local v3    # "adqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4119
    .end local v2    # "i":I
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 4120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find serial "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from mDtmfQueue. (size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 4121
    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4120
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    goto :goto_2

    .line 4123
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->remove(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 4125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove first item in dtmf queue done. (size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4129
    :goto_2
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 4130
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->get()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    .line 4131
    .local v2, "dqrr2":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v3, v2, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 4133
    .local v3, "rr2":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4135
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 4136
    .end local v2    # "dqrr2":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v3    # "rr2":Lcom/mediatek/ims/ril/RILRequest;
    goto :goto_3

    .line 4137
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 4138
    const-string v2, "send pending switch request"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4139
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    .line 4140
    .local v2, "pendingReq":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 4141
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setSendChldRequest()V

    .line 4142
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setPendingRequest(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 4145
    .end local v1    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v2    # "pendingReq":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :cond_4
    :goto_3
    monitor-exit v0

    .line 4146
    return-void

    .line 4145
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hangup(IILandroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "reason"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1833
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 1834
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 1836
    .local v0, "mtkVoiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1838
    const/16 v1, 0x883

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1842
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1843
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1842
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1848
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->hangupWithReason(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1851
    goto :goto_0

    .line 1849
    :catch_0
    move-exception v2

    .line 1850
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "hangupWithReason"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1853
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public hangup(ILandroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1809
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 1810
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1811
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1815
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1816
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1815
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1819
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->hangup(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1822
    goto :goto_0

    .line 1820
    :catch_0
    move-exception v2

    .line 1821
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "hangup"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1824
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public hangupAllCall(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2752
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 2753
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 2755
    .local v0, "mtkVoiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2756
    const/16 v1, 0x7e3

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2760
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2761
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2760
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2765
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->hangupAll(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2768
    goto :goto_0

    .line 2766
    :catch_0
    move-exception v2

    .line 2767
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "hangupAll"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2770
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public hold(ILandroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1891
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 1893
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1894
    const/16 v1, 0x824

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1898
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1899
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1898
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1903
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->controlCall(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1906
    goto :goto_0

    .line 1904
    :catch_0
    move-exception v2

    .line 1905
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "holdCall"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1908
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "confCallId"    # I
    .param p2, "participant"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 2666
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 2667
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsServiceCallTracker;->getParticipantCallId(Ljava/lang/String;)I

    move-result v0

    .line 2670
    .local v0, "participantCallId":I
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->internalAddConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    .line 2672
    return-void
.end method

.method public inviteParticipantsByCallId(ILcom/mediatek/ims/ImsCallInfo;Landroid/os/Message;)V
    .locals 6
    .param p1, "confCallId"    # I
    .param p2, "callInfo"    # Lcom/mediatek/ims/ImsCallInfo;
    .param p3, "response"    # Landroid/os/Message;

    .line 2702
    const-string v0, "IMS_RILA"

    if-nez p2, :cond_0

    .line 2703
    const-string v1, "Invite participants failed, call info is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    return-void

    .line 2706
    :cond_0
    iget-object v1, p2, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    .line 2708
    .local v1, "callId":Ljava/lang/String;
    const/4 v2, -0x1

    .line 2710
    .local v2, "id":I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2715
    .end local v2    # "id":I
    .local v0, "id":I
    nop

    .line 2717
    iget-object v2, p2, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->internalAddConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    .line 2718
    return-void

    .line 2711
    .end local v0    # "id":I
    .restart local v2    # "id":I
    :catch_0
    move-exception v3

    .line 2712
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invite participants failed: id is not integer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    return-void
.end method

.method public merge(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5303
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->conference(Landroid/os/Message;)V

    .line 5304
    return-void
.end method

.method public notifyImsServiceReady()V
    .locals 6

    .line 5689
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 5690
    .local v1, "proxy":Landroid/hardware/radio/V1_0/IRadio;
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 5691
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    const/4 v2, 0x0

    .line 5700
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 5691
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 5693
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5694
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 5695
    invoke-interface {v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->notifyImsServiceReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5697
    :catch_0
    move-exception v2

    .line 5698
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyImsServiceReady error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 5699
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    goto :goto_1

    .line 5700
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5702
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify fail, send EVENT_TRIGGER_TO_FIRE_PENDING_URC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5703
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->removeMessages(I)V

    .line 5704
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    .line 5705
    invoke-virtual {v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 5704
    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5708
    :cond_2
    :goto_1
    return-void
.end method

.method processIndication(II)V
    .locals 1
    .param p1, "service"    # I
    .param p2, "indicationType"    # I

    .line 4156
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 4157
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendAck(I)V

    .line 4162
    :cond_0
    return-void
.end method

.method processMtkIndication(II)V
    .locals 1
    .param p1, "service"    # I
    .param p2, "indicationType"    # I

    .line 4170
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 4171
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendMtkAck(I)V

    .line 4176
    :cond_0
    return-void
.end method

.method processRequestAck(I)V
    .locals 4
    .param p1, "serial"    # I

    .line 4180
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4181
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ril/RILRequest;

    .line 4182
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4183
    if-nez v1, :cond_0

    .line 4184
    const-string v0, "IMS_RILA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processRequestAck: Unexpected solicited ack response! serial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4188
    :cond_0
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 4190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Ack < "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4193
    :goto_0
    return-void

    .line 4182
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public processResponse(ILandroid/hardware/radio/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;
    .locals 6
    .param p1, "service"    # I
    .param p2, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p3, "isProprietary"    # Z

    .line 4218
    iget v2, p2, Landroid/hardware/radio/RadioResponseInfo;->serial:I

    iget v3, p2, Landroid/hardware/radio/RadioResponseInfo;->error:I

    iget v4, p2, Landroid/hardware/radio/RadioResponseInfo;->type:I

    move-object v0, p0

    move v1, p1

    move v5, p3

    .end local p1    # "service":I
    .end local p3    # "isProprietary":Z
    .local v1, "service":I
    .local v5, "isProprietary":Z
    invoke-direct/range {v0 .. v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseInternal(IIIIZ)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object p1

    return-object p1
.end method

.method public processResponse(ILandroid/hardware/radio/V1_0/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;
    .locals 6
    .param p1, "service"    # I
    .param p2, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p3, "isProprietary"    # Z

    .line 4204
    iget v2, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    iget v3, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    iget v4, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    move-object v0, p0

    move v1, p1

    move v5, p3

    .end local p1    # "service":I
    .end local p3    # "isProprietary":Z
    .local v1, "service":I
    .local v5, "isProprietary":Z
    invoke-direct/range {v0 .. v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseInternal(IIIIZ)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object p1

    return-object p1
.end method

.method public processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 2
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;
    .param p2, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p3, "ret"    # Ljava/lang/Object;

    .line 4308
    iget v0, p2, Landroid/hardware/radio/RadioResponseInfo;->error:I

    iget v1, p2, Landroid/hardware/radio/RadioResponseInfo;->type:I

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDoneInternal(Lcom/mediatek/ims/ril/RILRequest;IILjava/lang/Object;)V

    .line 4309
    return-void
.end method

.method public processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 2
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;
    .param p2, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p3, "ret"    # Ljava/lang/Object;

    .line 4294
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    iget v1, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDoneInternal(Lcom/mediatek/ims/ril/RILRequest;IILjava/lang/Object;)V

    .line 4295
    return-void
.end method

.method public pullCall(Ljava/lang/String;ZLandroid/os/Message;)V
    .locals 5
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "isVideoCall"    # Z
    .param p3, "response"    # Landroid/os/Message;

    .line 3805
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3806
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3808
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3809
    const/16 v1, 0x830

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3812
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " target = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isVideoCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3818
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->pullCall(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3821
    goto :goto_0

    .line 3819
    :catch_0
    move-exception v2

    .line 3820
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "pullCall"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3823
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 3294
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 3295
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3296
    const/16 v1, 0x37

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3298
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3300
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->getClip(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3303
    goto :goto_0

    .line 3301
    :catch_0
    move-exception v2

    .line 3302
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "queryCLIP"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3305
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryCallForwardInTimeSlotStatus(IILandroid/os/Message;)V
    .locals 5
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 3435
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3436
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3437
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3438
    const/16 v1, 0x84d

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3443
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cfreason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3448
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->queryCallForwardInTimeSlotStatus(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3452
    goto :goto_0

    .line 3449
    :catch_0
    move-exception v2

    .line 3450
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "queryCallForwardInTimeSlotStatus"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3454
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 3192
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 3193
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3194
    const/16 v1, 0x21

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3197
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cfreason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3202
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->getCallForwardStatus(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3205
    goto :goto_0

    .line 3203
    :catch_0
    move-exception v2

    .line 3204
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "queryCallForwardStatus"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3207
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 5
    .param p1, "serviceClass"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3214
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 3215
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3216
    const/16 v1, 0x23

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3219
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3223
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->getCallWaiting(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3226
    goto :goto_0

    .line 3224
    :catch_0
    move-exception v2

    .line 3225
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "queryCallWaiting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3228
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 3094
    const-string v4, "A0000000871002"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .end local p1    # "facility":Ljava/lang/String;
    .end local p2    # "password":Ljava/lang/String;
    .end local p3    # "serviceClass":I
    .end local p4    # "result":Landroid/os/Message;
    .local v1, "facility":Ljava/lang/String;
    .local v2, "password":Ljava/lang/String;
    .local v3, "serviceClass":I
    .local v5, "result":Landroid/os/Message;
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 3095
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/os/Message;

    .line 3103
    const-class v0, Lcom/mediatek/ims/ril/RadioSimProxy;

    invoke-virtual {p0, v0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/ril/RadioSimProxy;

    .line 3104
    .local v1, "simProxy":Lcom/mediatek/ims/ril/RadioSimProxy;
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3105
    const/16 v0, 0x2a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p5, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v7

    .line 3108
    .local v7, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " facility = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " serviceClass = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " appId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3113
    :try_start_0
    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3114
    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3115
    invoke-static {p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3117
    invoke-static {p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3113
    move v5, p3

    .end local p3    # "serviceClass":I
    .local v5, "serviceClass":I
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/ims/ril/RadioSimProxy;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3120
    goto :goto_1

    .line 3118
    :catch_0
    move-exception v0

    move-object p3, v0

    goto :goto_0

    .end local v5    # "serviceClass":I
    .restart local p3    # "serviceClass":I
    :catch_1
    move-exception v0

    move v5, p3

    move-object p3, v0

    .line 3119
    .restart local v5    # "serviceClass":I
    .local p3, "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x2

    const-string v2, "getFacilityLockForApp"

    invoke-direct {p0, v0, v2, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 3104
    .end local v5    # "serviceClass":I
    .end local v7    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .local p3, "serviceClass":I
    :cond_0
    move v5, p3

    .line 3122
    .end local p3    # "serviceClass":I
    .restart local v5    # "serviceClass":I
    :goto_1
    return-void
.end method

.method public querySsacStatus(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 5711
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 5713
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5714
    const/16 v1, 0x887

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 5718
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->querySsacStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5721
    goto :goto_0

    .line 5719
    :catch_0
    move-exception v2

    .line 5720
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "queryVopsStatus"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 5723
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryVopsStatus(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 5674
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 5676
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5677
    const/16 v1, 0x882

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 5681
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->queryVopsStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5684
    goto :goto_0

    .line 5682
    :catch_0
    move-exception v2

    .line 5683
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "queryVopsStatus"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 5686
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public reject(I)V
    .locals 1
    .param p1, "callId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5279
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->hangup(ILandroid/os/Message;)V

    .line 5280
    return-void
.end method

.method public reject(II)V
    .locals 2
    .param p1, "callId"    # I
    .param p2, "reason"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " reject with reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5285
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->hangup(IILandroid/os/Message;)V

    .line 5286
    return-void
.end method

.method public removeParticipants(ILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "confCallId"    # I
    .param p2, "participant"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 2684
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 2685
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsServiceCallTracker;->getParticipantCallId(Ljava/lang/String;)I

    move-result v0

    .line 2687
    .local v0, "participantCallId":I
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->internalRemoveConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    .line 2689
    return-void
.end method

.method public requestExitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 5
    .param p1, "response"    # Landroid/os/Message;

    .line 3707
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 3708
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3709
    const/16 v1, 0x63

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3713
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3714
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3713
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3718
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->exitEmergencyCallbackMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3721
    goto :goto_0

    .line 3719
    :catch_0
    move-exception v2

    .line 3720
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "exitEmergencyCallbackMode"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3723
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public resetSuppServ(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 3552
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3553
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3554
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3555
    const/16 v1, 0x874

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3559
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3560
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3559
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3564
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->resetSuppServ(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3567
    goto :goto_0

    .line 3565
    :catch_0
    move-exception v2

    .line 3566
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "resetSuppServ"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3569
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public responseBearerStateConfirm(IIII)V
    .locals 1
    .param p1, "phoneid"    # I
    .param p2, "aid"    # I
    .param p3, "action"    # I
    .param p4, "status"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5242
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, p4, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->responseBearerStateConfirm(IIILandroid/os/Message;)V

    .line 5243
    return-void
.end method

.method public responseBearerStateConfirm(IIILandroid/os/Message;)V
    .locals 5
    .param p1, "aid"    # I
    .param p2, "action"    # I
    .param p3, "status"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 3761
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3763
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3764
    const/16 v1, 0x820

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3768
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->imsBearerStateConfirm(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3771
    goto :goto_0

    .line 3769
    :catch_0
    move-exception v2

    .line 3770
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "imsBearerStateConfirm"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3773
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public resume(ILandroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1917
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 1919
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1920
    const/16 v1, 0x825

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1924
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1925
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1924
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1929
    const/4 v2, 0x1

    :try_start_0
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v3, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->controlCall(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1932
    goto :goto_0

    .line 1930
    :catch_0
    move-exception v3

    .line 1931
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "resumeCall"

    invoke-direct {p0, v2, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1935
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method riljLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 5190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5191
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5190
    const-string v1, "IMS_RILA"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5192
    return-void
.end method

.method riljLoge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 5195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5196
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5195
    const-string v1, "IMS_RILA"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5197
    return-void
.end method

.method riljLoge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 5200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5201
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5200
    const-string v1, "IMS_RILA"

    invoke-static {v1, v0, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5202
    return-void
.end method

.method riljLogi(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 5185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5186
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5185
    const-string v1, "IMS_RILA"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5187
    return-void
.end method

.method riljLogv(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 5205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5206
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5205
    const-string v1, "IMS_RILA"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5207
    return-void
.end method

.method public runGbaAuthentication(Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Message;)V
    .locals 8
    .param p1, "nafFqdn"    # Ljava/lang/String;
    .param p2, "nafSecureProtocolId"    # Ljava/lang/String;
    .param p3, "forceRun"    # Z
    .param p4, "netId"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 3497
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 3499
    .local v1, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3500
    const/16 v0, 0x84f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p5, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v7

    .line 3503
    .local v7, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3504
    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " nafFqdn = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " nafSecureProtocolId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " forceRun = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " netId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3503
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3512
    :try_start_0
    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .end local p1    # "nafFqdn":Ljava/lang/String;
    .end local p2    # "nafSecureProtocolId":Ljava/lang/String;
    .end local p3    # "forceRun":Z
    .end local p4    # "netId":I
    .local v3, "nafFqdn":Ljava/lang/String;
    .local v4, "nafSecureProtocolId":Ljava/lang/String;
    .local v5, "forceRun":Z
    .local v6, "netId":I
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3516
    goto :goto_1

    .line 3514
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "nafFqdn":Ljava/lang/String;
    .end local v4    # "nafSecureProtocolId":Ljava/lang/String;
    .end local v5    # "forceRun":Z
    .end local v6    # "netId":I
    .restart local p1    # "nafFqdn":Ljava/lang/String;
    .restart local p2    # "nafSecureProtocolId":Ljava/lang/String;
    .restart local p3    # "forceRun":Z
    .restart local p4    # "netId":I
    :catch_1
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object p1, v0

    .line 3515
    .end local p2    # "nafSecureProtocolId":Ljava/lang/String;
    .end local p3    # "forceRun":Z
    .end local p4    # "netId":I
    .restart local v3    # "nafFqdn":Ljava/lang/String;
    .restart local v4    # "nafSecureProtocolId":Ljava/lang/String;
    .restart local v5    # "forceRun":Z
    .restart local v6    # "netId":I
    .local p1, "e":Ljava/lang/Exception;
    :goto_0
    const/4 p2, 0x3

    const-string p3, "runGbaAuthentication"

    invoke-direct {p0, p2, p3, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 3499
    .end local v3    # "nafFqdn":Ljava/lang/String;
    .end local v4    # "nafSecureProtocolId":Ljava/lang/String;
    .end local v5    # "forceRun":Z
    .end local v6    # "netId":I
    .end local v7    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .local p1, "nafFqdn":Ljava/lang/String;
    .restart local p2    # "nafSecureProtocolId":Ljava/lang/String;
    .restart local p3    # "forceRun":Z
    .restart local p4    # "netId":I
    :cond_0
    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 3519
    .end local p1    # "nafFqdn":Ljava/lang/String;
    .end local p2    # "nafSecureProtocolId":Ljava/lang/String;
    .end local p3    # "forceRun":Z
    .end local p4    # "netId":I
    .restart local v3    # "nafFqdn":Ljava/lang/String;
    .restart local v4    # "nafSecureProtocolId":Ljava/lang/String;
    .restart local v5    # "forceRun":Z
    .restart local v6    # "netId":I
    :goto_1
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 5
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1964
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 1965
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1966
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1971
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1975
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->sendDtmf(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1978
    goto :goto_0

    .line 1976
    :catch_0
    move-exception v2

    .line 1977
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "sendDtmf"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1980
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendRttModifyRequest(IILandroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "newMode"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 4838
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4839
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4840
    const/16 v1, 0x87f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4844
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4845
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4844
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4850
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->sendRttModifyRequest(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4854
    goto :goto_0

    .line 4852
    :catch_0
    move-exception v2

    .line 4853
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "sendRttModifyRequest"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4857
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendRttText(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "length"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 4870
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4871
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4872
    const/16 v1, 0x880

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4876
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4877
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " text = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4876
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4884
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p3, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->sendRttText(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4888
    goto :goto_0

    .line 4886
    :catch_0
    move-exception v2

    .line 4887
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "sendRttText"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4890
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[BLandroid/os/Message;)V
    .locals 20
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z
    .param p6, "pdu"    # [B
    .param p7, "response"    # Landroid/os/Message;

    .line 4456
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p7

    const-string v0, "3gpp"

    const-class v4, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {v1, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4457
    .local v5, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 4458
    const/16 v4, 0x855

    iget-object v6, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, v4, v3, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v4

    .line 4462
    .local v4, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4466
    const/4 v12, 0x1

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4467
    iget v6, v4, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-static/range {p6 .. p6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move/from16 v11, p2

    move-object/from16 v7, p4

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v11}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->sendImsSmsEx(ILjava/lang/String;Ljava/lang/String;[BZI)V

    goto :goto_0

    .line 4469
    :cond_0
    const-string v6, "3gpp2"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4470
    iget v6, v4, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v11, p2

    move/from16 v10, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v5 .. v11}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->sendImsSmsEx(ILjava/lang/String;Ljava/lang/String;[BZI)V

    .line 4475
    :goto_0
    iget-object v13, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v6, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget v15, v4, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 4476
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4477
    move/from16 v17, v12

    goto :goto_1

    .line 4478
    :cond_1
    const/4 v0, 0x2

    move/from16 v17, v0

    :goto_1
    nop

    .line 4475
    const/16 v16, 0x3

    const-wide/16 v18, 0x0

    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIIIJ)V

    .line 4483
    goto :goto_2

    .line 4472
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "> SMS format Error"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4473
    return-void

    .line 4481
    :catch_0
    move-exception v0

    .line 4482
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "sendSms"

    invoke-direct {v1, v12, v6, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4485
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_3
    :goto_2
    return-void
.end method

.method public sendUSSI(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "ussiString"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 3023
    const-string v0, "persist.vendor.ims.ussi.ap"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrap sendUSSI, ussiString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3028
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3029
    return-void

    .line 3032
    :cond_0
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3033
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3034
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3035
    const/16 v1, 0x82d

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3039
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3040
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ussiString = ******"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3039
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3045
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->sendUssi(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3048
    goto :goto_0

    .line 3046
    :catch_0
    move-exception v2

    .line 3047
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "sendUssi"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3050
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public sendWfcProfileInfo(IILandroid/os/Message;)V
    .locals 0
    .param p1, "wfcPreference"    # I
    .param p2, "phoneid"    # I
    .param p3, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5236
    invoke-virtual {p0, p1, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendWfcProfileInfo(ILandroid/os/Message;)V

    .line 5237
    return-void
.end method

.method public sendWfcProfileInfo(ILandroid/os/Message;)V
    .locals 5
    .param p1, "wfcPreference"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2800
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2802
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2803
    const/16 v1, 0x82f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2807
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2808
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " wfcPreference = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2807
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2813
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setWfcProfile(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2816
    goto :goto_0

    .line 2814
    :catch_0
    move-exception v2

    .line 2815
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setWfcProfile"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2818
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setBarringCalls([Lcom/mediatek/ims/MtkImsBarringCall;Landroid/os/Message;)V
    .locals 5
    .param p1, "calls"    # [Lcom/mediatek/ims/MtkImsBarringCall;
    .param p2, "result"    # Landroid/os/Message;

    .line 3650
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3651
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3653
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3654
    const/16 v1, 0x88d

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3657
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 3659
    const-string v2, "setBarringCalls does not support"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3662
    if-eqz p2, :cond_0

    .line 3663
    nop

    .line 3665
    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v2

    .line 3663
    invoke-static {p2, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3666
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3669
    :cond_0
    return-void

    .line 3672
    :cond_1
    if-nez p1, :cond_3

    .line 3674
    const-string v2, "setBarringCalls, calls is null"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 3677
    if-eqz p2, :cond_2

    .line 3678
    nop

    .line 3680
    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v2

    .line 3678
    invoke-static {p2, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3681
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3684
    :cond_2
    return-void

    .line 3688
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3689
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3688
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3693
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setBarringCalls(I[Lcom/mediatek/ims/MtkImsBarringCall;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3696
    goto :goto_0

    .line 3694
    :catch_0
    move-exception v2

    .line 3695
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setBarringCalls"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3698
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_0
    return-void
.end method

.method public setCLIP(ILandroid/os/Message;)V
    .locals 5
    .param p1, "clipEnable"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3313
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3314
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3315
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3316
    const/16 v1, 0x837

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3320
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " clipEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3325
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->setClip(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3328
    goto :goto_0

    .line 3326
    :catch_0
    move-exception v2

    .line 3327
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "setCLIP"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3330
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 5
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3274
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 3275
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3276
    const/16 v1, 0x20

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3278
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " clirMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3282
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->setClir(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3285
    goto :goto_0

    .line 3283
    :catch_0
    move-exception v2

    .line 3284
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setCLIR"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3287
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCOLP(ILandroid/os/Message;)V
    .locals 5
    .param p1, "colpEnable"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3411
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3412
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3413
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3414
    const/16 v1, 0x84b

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3418
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " colpEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3423
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->setColp(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3426
    goto :goto_0

    .line 3424
    :catch_0
    move-exception v2

    .line 3425
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "setCOLP"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3428
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCOLR(ILandroid/os/Message;)V
    .locals 5
    .param p1, "colrEnable"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3362
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3363
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3364
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3365
    const/16 v1, 0x84c

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3369
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " colrEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3374
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->setColr(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3377
    goto :goto_0

    .line 3375
    :catch_0
    move-exception v2

    .line 3376
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "setCOLR"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3379
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCallAdditionalInfo(Ljava/util/ArrayList;Landroid/os/Message;)V
    .locals 5
    .param p2, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 5745
    .local p1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 5746
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 5748
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5749
    const/16 v1, 0x88a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 5753
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5757
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setCallAdditionalInfo(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5760
    goto :goto_0

    .line 5758
    :catch_0
    move-exception v2

    .line 5759
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setCallAdditionalInfo"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 5762
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 9
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "result"    # Landroid/os/Message;

    .line 3167
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 3168
    .local v1, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3169
    const/16 v0, 0x22

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p6, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v8

    .line 3172
    .local v8, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v8, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " action = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " cfReason = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " serviceClass = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " timeSeconds = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3178
    :try_start_0
    iget v2, v8, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    .end local p1    # "action":I
    .end local p2    # "cfReason":I
    .end local p3    # "serviceClass":I
    .end local p4    # "number":Ljava/lang/String;
    .end local p5    # "timeSeconds":I
    .local v3, "action":I
    .local v4, "cfReason":I
    .local v5, "serviceClass":I
    .local v6, "number":Ljava/lang/String;
    .local v7, "timeSeconds":I
    :try_start_1
    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->setCallForward(IIIILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3182
    goto :goto_1

    .line 3180
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "action":I
    .end local v4    # "cfReason":I
    .end local v5    # "serviceClass":I
    .end local v6    # "number":Ljava/lang/String;
    .end local v7    # "timeSeconds":I
    .restart local p1    # "action":I
    .restart local p2    # "cfReason":I
    .restart local p3    # "serviceClass":I
    .restart local p4    # "number":Ljava/lang/String;
    .restart local p5    # "timeSeconds":I
    :catch_1
    move-exception v0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-object p1, v0

    .line 3181
    .end local p2    # "cfReason":I
    .end local p3    # "serviceClass":I
    .end local p4    # "number":Ljava/lang/String;
    .end local p5    # "timeSeconds":I
    .restart local v3    # "action":I
    .restart local v4    # "cfReason":I
    .restart local v5    # "serviceClass":I
    .restart local v6    # "number":Ljava/lang/String;
    .restart local v7    # "timeSeconds":I
    .local p1, "e":Ljava/lang/Exception;
    :goto_0
    const/4 p2, 0x1

    const-string p3, "setCallForward"

    invoke-direct {p0, p2, p3, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 3168
    .end local v3    # "action":I
    .end local v4    # "cfReason":I
    .end local v5    # "serviceClass":I
    .end local v6    # "number":Ljava/lang/String;
    .end local v7    # "timeSeconds":I
    .end local v8    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .local p1, "action":I
    .restart local p2    # "cfReason":I
    .restart local p3    # "serviceClass":I
    .restart local p4    # "number":Ljava/lang/String;
    .restart local p5    # "timeSeconds":I
    :cond_0
    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    .line 3184
    .end local p1    # "action":I
    .end local p2    # "cfReason":I
    .end local p3    # "serviceClass":I
    .end local p4    # "number":Ljava/lang/String;
    .end local p5    # "timeSeconds":I
    .restart local v3    # "action":I
    .restart local v4    # "cfReason":I
    .restart local v5    # "serviceClass":I
    .restart local v6    # "number":Ljava/lang/String;
    .restart local v7    # "timeSeconds":I
    :goto_1
    return-void
.end method

.method public setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;)V
    .locals 11
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "timeSlot"    # [J
    .param p7, "result"    # Landroid/os/Message;

    .line 3462
    move-object/from16 v1, p7

    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3463
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3464
    .local v2, "voiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v2}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3465
    const/16 v0, 0x84e

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, v1, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v10

    .line 3470
    .local v10, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v10, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " action = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " cfReason = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " serviceClass = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " timeSeconds = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v8, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3476
    :try_start_0
    iget v3, v10, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move-object/from16 v9, p6

    invoke-virtual/range {v2 .. v9}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->setCallForwardInTimeSlot(IIIILjava/lang/String;I[J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3481
    goto :goto_0

    .line 3478
    :catch_0
    move-exception v0

    .line 3479
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "setCallForwardInTimeSlot"

    invoke-direct {p0, v3, v4, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3483
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCallIndication(IIII)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "callId"    # I
    .param p3, "seqNum"    # I
    .param p4, "cause"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5327
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "mode":I
    .end local p2    # "callId":I
    .end local p3    # "seqNum":I
    .end local p4    # "cause":I
    .local v1, "mode":I
    .local v2, "callId":I
    .local v3, "seqNum":I
    .local v4, "cause":I
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setCallIndication(IIIILandroid/os/Message;)V

    .line 5328
    return-void
.end method

.method public setCallIndication(IIIILandroid/os/Message;)V
    .locals 8
    .param p1, "mode"    # I
    .param p2, "callId"    # I
    .param p3, "seqNum"    # I
    .param p4, "cause"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 2066
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 2067
    invoke-virtual {p0, v0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 2069
    .local v1, "mtkVoiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2070
    const/16 v0, 0x7e0

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p5, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v7

    .line 2074
    .local v7, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2075
    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " callId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " seqNum = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " cause = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2074
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2080
    :try_start_0
    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p1    # "mode":I
    .end local p2    # "callId":I
    .end local p3    # "seqNum":I
    .end local p4    # "cause":I
    .local v3, "mode":I
    .local v4, "callId":I
    .local v5, "seqNum":I
    .local v6, "cause":I
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->setCallIndication(IIIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2083
    goto :goto_1

    .line 2081
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "mode":I
    .end local v4    # "callId":I
    .end local v5    # "seqNum":I
    .end local v6    # "cause":I
    .restart local p1    # "mode":I
    .restart local p2    # "callId":I
    .restart local p3    # "seqNum":I
    .restart local p4    # "cause":I
    :catch_1
    move-exception v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object p1, v0

    .line 2082
    .end local p2    # "callId":I
    .end local p3    # "seqNum":I
    .end local p4    # "cause":I
    .restart local v3    # "mode":I
    .restart local v4    # "callId":I
    .restart local v5    # "seqNum":I
    .restart local v6    # "cause":I
    .local p1, "e":Ljava/lang/Exception;
    :goto_0
    const/4 p2, 0x2

    const-string p3, "setCallIndication"

    invoke-direct {p0, p2, p3, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 2069
    .end local v3    # "mode":I
    .end local v4    # "callId":I
    .end local v5    # "seqNum":I
    .end local v6    # "cause":I
    .end local v7    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .local p1, "mode":I
    .restart local p2    # "callId":I
    .restart local p3    # "seqNum":I
    .restart local p4    # "cause":I
    :cond_0
    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 2085
    .end local p1    # "mode":I
    .end local p2    # "callId":I
    .end local p3    # "seqNum":I
    .end local p4    # "cause":I
    .restart local v3    # "mode":I
    .restart local v4    # "callId":I
    .restart local v5    # "seqNum":I
    .restart local v6    # "cause":I
    :goto_1
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 3235
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 3236
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3237
    const/16 v1, 0x24

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3240
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3244
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->setCallWaiting(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3247
    goto :goto_0

    .line 3245
    :catch_0
    move-exception v2

    .line 3246
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setCallWaiting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3249
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 3130
    const-string v5, "A0000000871002"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    .end local p1    # "facility":Ljava/lang/String;
    .end local p2    # "lockState":Z
    .end local p3    # "password":Ljava/lang/String;
    .end local p4    # "serviceClass":I
    .end local p5    # "result":Landroid/os/Message;
    .local v1, "facility":Ljava/lang/String;
    .local v2, "lockState":Z
    .local v3, "password":Ljava/lang/String;
    .local v4, "serviceClass":I
    .local v6, "result":Landroid/os/Message;
    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 3131
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 9
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "appId"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .line 3139
    const-class v0, Lcom/mediatek/ims/ril/RadioSimProxy;

    invoke-virtual {p0, v0, p6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/ril/RadioSimProxy;

    .line 3140
    .local v1, "simProxy":Lcom/mediatek/ims/ril/RadioSimProxy;
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3141
    const/16 v0, 0x2b

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p6, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v8

    .line 3144
    .local v8, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v8, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " facility = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " lockstate = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " serviceClass = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " appId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3149
    :try_start_0
    iget v2, v8, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3150
    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3152
    invoke-static {p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3154
    invoke-static {p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3149
    move v4, p2

    move v6, p4

    .end local p2    # "lockState":Z
    .end local p4    # "serviceClass":I
    .local v4, "lockState":Z
    .local v6, "serviceClass":I
    :try_start_1
    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/ims/ril/RadioSimProxy;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3157
    goto :goto_1

    .line 3155
    :catch_0
    move-exception v0

    move-object p2, v0

    goto :goto_0

    .end local v4    # "lockState":Z
    .end local v6    # "serviceClass":I
    .restart local p2    # "lockState":Z
    .restart local p4    # "serviceClass":I
    :catch_1
    move-exception v0

    move v4, p2

    move v6, p4

    move-object p2, v0

    .line 3156
    .end local p4    # "serviceClass":I
    .restart local v4    # "lockState":Z
    .restart local v6    # "serviceClass":I
    .local p2, "e":Ljava/lang/Exception;
    :goto_0
    const/4 p4, 0x2

    const-string v0, "setFacilityLockForApp"

    invoke-direct {p0, p4, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 3140
    .end local v4    # "lockState":Z
    .end local v6    # "serviceClass":I
    .end local v8    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .local p2, "lockState":Z
    .restart local p4    # "serviceClass":I
    :cond_0
    move v4, p2

    move v6, p4

    .line 3159
    .end local p2    # "lockState":Z
    .end local p4    # "serviceClass":I
    .restart local v4    # "lockState":Z
    .restart local v6    # "serviceClass":I
    :goto_1
    return-void
.end method

.method public setImsBearerNotification(II)V
    .locals 1
    .param p1, "phoneid"    # I
    .param p2, "enable"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5248
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setImsBearerNotification(ILandroid/os/Message;)V

    .line 5249
    return-void
.end method

.method public setImsBearerNotification(ILandroid/os/Message;)V
    .locals 5
    .param p1, "enable"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3783
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3785
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3786
    const/16 v1, 0x857

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3790
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setImsBearerNotification(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3793
    goto :goto_0

    .line 3791
    :catch_0
    move-exception v2

    .line 3792
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setImsBearerNotification"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3795
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setImsCallMode(ILandroid/os/Message;)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 4604
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4606
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4607
    const/16 v1, 0x886

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4611
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4616
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setImsCallMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4619
    goto :goto_0

    .line 4617
    :catch_0
    move-exception v2

    .line 4618
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setImsCallMode"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4621
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setImsCfg([IILandroid/os/Message;)V
    .locals 0
    .param p1, "params"    # [I
    .param p2, "phoneid"    # I
    .param p3, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5267
    invoke-virtual {p0, p1, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setImsCfg([ILandroid/os/Message;)V

    .line 5268
    return-void
.end method

.method public setImsCfg([ILandroid/os/Message;)V
    .locals 18
    .param p1, "params"    # [I
    .param p2, "response"    # Landroid/os/Message;

    .line 2137
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/4 v0, 0x0

    aget v3, p1, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    move v7, v3

    .line 2138
    .local v7, "volteEnable":Z
    aget v3, p1, v4

    if-ne v3, v4, :cond_1

    move v8, v4

    goto :goto_1

    :cond_1
    move v8, v0

    .line 2139
    .local v8, "vilteEnable":Z
    :goto_1
    const/4 v3, 0x2

    aget v5, p1, v3

    if-ne v5, v4, :cond_2

    move v9, v4

    goto :goto_2

    :cond_2
    move v9, v0

    .line 2140
    .local v9, "vowifiEnable":Z
    :goto_2
    const/4 v5, 0x3

    aget v6, p1, v5

    if-ne v6, v4, :cond_3

    move v10, v4

    goto :goto_3

    :cond_3
    move v10, v0

    .line 2141
    .local v10, "viwifiEnable":Z
    :goto_3
    const/4 v6, 0x4

    aget v11, p1, v6

    if-ne v11, v4, :cond_4

    move v11, v4

    goto :goto_4

    :cond_4
    move v11, v0

    .line 2142
    .local v11, "smsEnable":Z
    :goto_4
    const/4 v12, 0x5

    aget v13, p1, v12

    if-ne v13, v4, :cond_5

    move v13, v4

    goto :goto_5

    :cond_5
    move v13, v0

    .line 2144
    .local v13, "eimsEnable":Z
    :goto_5
    const-class v14, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {v1, v14, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v14

    check-cast v14, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2146
    .local v14, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v14}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_6

    .line 2147
    const/16 v15, 0x81d

    move/from16 v16, v0

    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, v15, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v15

    .line 2151
    .local v15, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v3

    invoke-virtual {v15}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ">  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v15, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2152
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " volteEnable = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v3, p1, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " vilteEnable = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v3, p1, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " vowifiEnable = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v3, p1, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " viwifiEnable = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v3, p1, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " smsEnable = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v3, p1, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " eimsEnable = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v3, p1, v12

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2151
    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2162
    :try_start_0
    iget v6, v15, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move v12, v13

    move-object v5, v14

    .end local v13    # "eimsEnable":Z
    .end local v14    # "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    .local v5, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    .local v12, "eimsEnable":Z
    :try_start_1
    invoke-virtual/range {v5 .. v12}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setImscfg(IZZZZZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2170
    goto :goto_7

    .line 2168
    :catch_0
    move-exception v0

    goto :goto_6

    .end local v5    # "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    .end local v12    # "eimsEnable":Z
    .restart local v13    # "eimsEnable":Z
    .restart local v14    # "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    :catch_1
    move-exception v0

    move v12, v13

    move-object v5, v14

    .line 2169
    .end local v13    # "eimsEnable":Z
    .end local v14    # "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v5    # "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    .restart local v12    # "eimsEnable":Z
    :goto_6
    const-string v3, "setImsCfg"

    invoke-direct {v1, v4, v3, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_7

    .line 2146
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    .end local v12    # "eimsEnable":Z
    .end local v15    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .restart local v13    # "eimsEnable":Z
    .restart local v14    # "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    :cond_6
    move v12, v13

    move-object v5, v14

    .line 2172
    .end local v13    # "eimsEnable":Z
    .end local v14    # "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    .restart local v5    # "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    .restart local v12    # "eimsEnable":Z
    :goto_7
    return-void
.end method

.method public setImsCfgFeatureValue(IIIILandroid/os/Message;)V
    .locals 10
    .param p1, "featureId"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "isLast"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 2484
    move-object v7, p5

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2485
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2484
    const/4 v8, 0x1

    .line 2506
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2484
    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Ljava/util/Map;

    .line 2485
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HalVersion;

    sget-object v9, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2486
    const-string v0, "vodata"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IVoDataService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IVoDataService;

    move-result-object v4

    .line 2488
    .local v4, "iVoDataService":Lcom/mediatek/ims/internal/IVoDataService;
    if-eqz v4, :cond_1

    .line 2489
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setImsCfgFeatureValue vodata value = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2490
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p3, v8, :cond_0

    move v2, v8

    :cond_0
    invoke-interface {v4, v0, v2}, Lcom/mediatek/ims/internal/IVoDataService;->setEnabled(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2492
    :catch_0
    move-exception v0

    .line 2493
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "setImsCfgFeatureValue vodata error!"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    goto :goto_1

    .line 2494
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    nop

    .line 2496
    :goto_1
    if-eqz v7, :cond_2

    .line 2497
    const/4 v0, 0x0

    .line 2498
    .local v0, "ret":Ljava/lang/Object;
    invoke-static {p5, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2499
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    .line 2501
    .end local v0    # "ret":Ljava/lang/Object;
    :cond_2
    return-void

    .line 2504
    .end local v4    # "iVoDataService":Lcom/mediatek/ims/internal/IVoDataService;
    :cond_3
    const/16 v0, 0x9

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    .line 2505
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    .line 2506
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Ljava/util/Map;

    .line 2507
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2508
    :cond_4
    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v0

    .line 2509
    .local v0, "uaMgr":Lcom/mediatek/ims/rcs/UaServiceManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setImsCfgFeatureValue callcomposer over rcs value = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2510
    const-string v2, "+g.gsma.callcomposer"

    if-ne p3, v8, :cond_5

    .line 2511
    if-eqz v0, :cond_6

    .line 2512
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v6, Lcom/mediatek/ims/rcsua/Capability;

    invoke-direct {v6, v2}, Lcom/mediatek/ims/rcsua/Capability;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v6}, Lcom/mediatek/ims/rcs/UaServiceManager;->addCapability(ILcom/mediatek/ims/rcsua/Capability;)V

    goto :goto_2

    .line 2515
    :cond_5
    if-eqz v0, :cond_6

    .line 2516
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v6, Lcom/mediatek/ims/rcsua/Capability;

    invoke-direct {v6, v2}, Lcom/mediatek/ims/rcsua/Capability;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v6}, Lcom/mediatek/ims/rcs/UaServiceManager;->removeCapability(ILcom/mediatek/ims/rcsua/Capability;)V

    .line 2520
    :cond_6
    :goto_2
    if-eqz v7, :cond_7

    .line 2521
    const/4 v2, 0x0

    .line 2522
    .local v2, "ret":Ljava/lang/Object;
    invoke-static {p5, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2523
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    .line 2525
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_7
    return-void

    .line 2528
    .end local v0    # "uaMgr":Lcom/mediatek/ims/rcs/UaServiceManager;
    :cond_8
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2530
    .local v1, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2531
    const/16 v0, 0x858

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p5, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v9

    .line 2535
    .local v9, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_1
    iget v2, v9, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setImsCfgFeatureValue(IIIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2539
    goto :goto_3

    .line 2537
    :catch_1
    move-exception v0

    .line 2538
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "setImsCfgFeatureValue"

    invoke-direct {p0, v8, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2541
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_9
    :goto_3
    return-void
.end method

.method public setImsCfgProvisionValue(ILjava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "configId"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 2573
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2575
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2576
    const/16 v1, 0x85a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2580
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setImsCfgProvisionValue(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2583
    goto :goto_0

    .line 2581
    :catch_0
    move-exception v2

    .line 2582
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setImsCfgProvisionValue"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2585
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setImsRegistrationReport(ILandroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5273
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setImsRegistrationReport(Landroid/os/Message;)V

    .line 5274
    return-void
.end method

.method public setImsRegistrationReport(Landroid/os/Message;)V
    .locals 5
    .param p1, "response"    # Landroid/os/Message;

    .line 3833
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3835
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3836
    const/16 v1, 0x831

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3840
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3844
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setImsRegistrationReport(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3847
    goto :goto_0

    .line 3845
    :catch_0
    move-exception v2

    .line 3846
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setImsRegistrationReport"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3849
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setModemImsCfg(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 5
    .param p1, "keys"    # Ljava/lang/String;
    .param p2, "values"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 2182
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2184
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2185
    const/16 v1, 0x850

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2189
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2190
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " keys = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " values = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2189
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2197
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2200
    goto :goto_0

    .line 2198
    :catch_0
    move-exception v2

    .line 2199
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "sendModemImsCfg"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2202
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 5
    .param p1, "enableMute"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1662
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 1663
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1664
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v3, 0x35

    invoke-direct {p0, v3, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1668
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1669
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mute = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1668
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1674
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->setMute(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1677
    goto :goto_0

    .line 1675
    :catch_0
    move-exception v2

    .line 1676
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setMute"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1679
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setRttMode(ILandroid/os/Message;)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 4901
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4902
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4903
    const/16 v1, 0x87e

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4907
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4908
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4907
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4913
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setRttMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4917
    goto :goto_0

    .line 4915
    :catch_0
    move-exception v2

    .line 4916
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setRttMode"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4919
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setRttModifyRequestResponse(IILandroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 4808
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4809
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4810
    const/16 v1, 0x881

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4814
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4815
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4814
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4820
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->rttModifyRequestResponse(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4824
    goto :goto_0

    .line 4822
    :catch_0
    move-exception v2

    .line 4823
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "rttModifyRequestResponse"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4826
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setSipHeader(IIILjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "total"    # I
    .param p2, "index"    # I
    .param p3, "headerCount"    # I
    .param p4, "headerValuePair"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .line 4542
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4544
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4545
    const/16 v1, 0x884

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4549
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4552
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4553
    .local v2, "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4554
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4555
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4556
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4559
    :try_start_0
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v3, v2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setSipHeader(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4562
    goto :goto_0

    .line 4560
    :catch_0
    move-exception v3

    .line 4561
    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, 0x1

    const-string v5, "setSipHeader"

    invoke-direct {p0, v4, v5, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4564
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setSipHeaderReport(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "headerType"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 4574
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4576
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4577
    const/16 v1, 0x885

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4581
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " headerType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4585
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4586
    .local v2, "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4587
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4590
    :try_start_0
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v3, v2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setSipHeaderReport(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4593
    goto :goto_0

    .line 4591
    :catch_0
    move-exception v3

    .line 4592
    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, 0x1

    const-string v5, "setSipHeaderReport"

    invoke-direct {p0, v4, v5, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4595
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setVoiceDomainPreference(ILandroid/os/Message;)V
    .locals 5
    .param p1, "vdp"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 3858
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3860
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3861
    const/16 v1, 0x84a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3864
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vdp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3868
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setVoiceDomainPreference(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3871
    goto :goto_0

    .line 3869
    :catch_0
    move-exception v2

    .line 3870
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setVoiceDomainPreference"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3873
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setupXcapUserAgentString(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 3578
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3579
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3580
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3581
    const/16 v1, 0x877

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3585
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3586
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " userAgent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3585
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3591
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setupXcapUserAgentString(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3594
    goto :goto_0

    .line 3592
    :catch_0
    move-exception v2

    .line 3593
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setupXcapUserAgentString"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3596
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;IZZLandroid/os/Message;)V
    .locals 8
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "clirMode"    # I
    .param p4, "isEmergency"    # Z
    .param p5, "isVideoCall"    # Z
    .param p6, "result"    # Landroid/os/Message;

    .line 1696
    if-eqz p5, :cond_0

    if-nez p4, :cond_0

    .line 1697
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v6, p5

    move-object v7, p6

    goto :goto_0

    .line 1698
    :cond_0
    if-eqz p4, :cond_1

    .line 1699
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v6, p5

    move-object v7, p6

    .end local p1    # "callee":Ljava/lang/String;
    .end local p2    # "callProfile":Landroid/telephony/ims/ImsCallProfile;
    .end local p3    # "clirMode":I
    .end local p5    # "isVideoCall":Z
    .end local p6    # "result":Landroid/os/Message;
    .local v2, "callee":Ljava/lang/String;
    .local v3, "callProfile":Landroid/telephony/ims/ImsCallProfile;
    .local v4, "clirMode":I
    .local v6, "isVideoCall":Z
    .local v7, "result":Landroid/os/Message;
    invoke-direct/range {v1 .. v7}, Lcom/mediatek/ims/ril/ImsRILAdapter;->emergencyDial(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;ILcom/android/internal/telephony/UUSInfo;ZLandroid/os/Message;)V

    goto :goto_0

    .line 1701
    .end local v2    # "callee":Ljava/lang/String;
    .end local v3    # "callProfile":Landroid/telephony/ims/ImsCallProfile;
    .end local v4    # "clirMode":I
    .end local v6    # "isVideoCall":Z
    .end local v7    # "result":Landroid/os/Message;
    .restart local p1    # "callee":Ljava/lang/String;
    .restart local p2    # "callProfile":Landroid/telephony/ims/ImsCallProfile;
    .restart local p3    # "clirMode":I
    .restart local p5    # "isVideoCall":Z
    .restart local p6    # "result":Landroid/os/Message;
    :cond_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v6, p5

    move-object v7, p6

    .end local p1    # "callee":Ljava/lang/String;
    .end local p2    # "callProfile":Landroid/telephony/ims/ImsCallProfile;
    .end local p3    # "clirMode":I
    .end local p5    # "isVideoCall":Z
    .end local p6    # "result":Landroid/os/Message;
    .restart local v2    # "callee":Ljava/lang/String;
    .restart local v3    # "callProfile":Landroid/telephony/ims/ImsCallProfile;
    .restart local v4    # "clirMode":I
    .restart local v6    # "isVideoCall":Z
    .restart local v7    # "result":Landroid/os/Message;
    invoke-virtual {p0, v2, v4, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    .line 1703
    :goto_0
    return-void
.end method

.method public startConference([Ljava/lang/String;IZILandroid/os/Message;)V
    .locals 0
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isVideoCall"    # Z
    .param p4, "phoneid"    # I
    .param p5, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5255
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->startConference([Ljava/lang/String;IZLandroid/os/Message;)V

    .line 5256
    return-void
.end method

.method public startConference([Ljava/lang/String;IZLandroid/os/Message;)V
    .locals 0
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isVideoCall"    # Z
    .param p4, "result"    # Landroid/os/Message;

    .line 1719
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->conferenceDial([Ljava/lang/String;IZLandroid/os/Message;)V

    .line 1720
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 7
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1991
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    monitor-enter v0

    .line 1992
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->hasSendChldRequest()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 1993
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x20

    if-ge v1, v2, :cond_2

    .line 1994
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->isStart()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1995
    const-class v1, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v1, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 1996
    .local v1, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1997
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v3, 0x31

    invoke-direct {p0, v3, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v2

    .line 1999
    .local v2, "rr":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->start()V

    .line 2000
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 2001
    .local v3, "param":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4, v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    .line 2003
    .local v4, "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v5, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->add(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 2004
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 2005
    const-string v5, "send start dtmf"

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2008
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2009
    invoke-direct {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 2012
    .end local v1    # "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    .end local v2    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v3    # "param":[Ljava/lang/Object;
    .end local v4    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :cond_0
    goto :goto_0

    .line 2013
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMF status conflict, want to start DTMF when status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 2014
    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->isStart()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2013
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2017
    :cond_2
    :goto_0
    monitor-exit v0

    .line 2018
    return-void

    .line 2017
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 7
    .param p1, "result"    # Landroid/os/Message;

    .line 2029
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    monitor-enter v0

    .line 2030
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->hasSendChldRequest()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 2031
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x20

    if-ge v1, v2, :cond_2

    .line 2032
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->isStart()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2033
    const-class v1, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 2034
    .local v1, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2035
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v3, 0x32

    invoke-direct {p0, v3, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v2

    .line 2037
    .local v2, "rr":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->stop()V

    .line 2038
    const/4 v3, 0x0

    .line 2039
    .local v3, "param":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4, v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    .line 2041
    .local v4, "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v5, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->add(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 2042
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 2043
    const-string v5, "send stop dtmf"

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2045
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2046
    invoke-direct {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 2049
    .end local v1    # "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    .end local v2    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v3    # "param":[Ljava/lang/Object;
    .end local v4    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :cond_0
    goto :goto_0

    .line 2050
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMF status conflict, want to start DTMF when status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 2051
    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->isStart()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2050
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2054
    :cond_2
    :goto_0
    monitor-exit v0

    .line 2055
    return-void

    .line 2054
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public swap(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .line 2779
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 2780
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2781
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2786
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2789
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleChldRelatedRequest(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)V

    .line 2791
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    return-void
.end method

.method public terminate(I)V
    .locals 1
    .param p1, "callId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5291
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->hangup(ILandroid/os/Message;)V

    .line 5292
    return-void
.end method

.method public terminate(II)V
    .locals 2
    .param p1, "callId"    # I
    .param p2, "reason"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "terminate with reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5297
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->hangup(IILandroid/os/Message;)V

    .line 5298
    return-void
.end method

.method public toggleRttAudioIndication(IILandroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "enable"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 5726
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 5727
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5728
    const/16 v1, 0x888

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 5731
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5736
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->toggleRttAudioIndication(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5740
    goto :goto_0

    .line 5738
    :catch_0
    move-exception v2

    .line 5739
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "toggleRttAudioIndication"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 5742
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOffRcsUa(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2453
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2455
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2456
    const/16 v1, 0x876

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2460
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2461
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2460
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2465
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2467
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 2465
    const/16 v4, 0xe

    invoke-virtual {v0, v2, v4, v3}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2470
    goto :goto_0

    .line 2468
    :catch_0
    move-exception v2

    .line 2469
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2472
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOffVilte(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2345
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2347
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2348
    const/16 v1, 0x818

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2352
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2353
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2352
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2357
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2359
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 2357
    const/16 v4, 0xc

    invoke-virtual {v0, v2, v4, v3}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2362
    goto :goto_0

    .line 2360
    :catch_0
    move-exception v2

    .line 2361
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2364
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOffViwifi(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2399
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2401
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2402
    const/16 v1, 0x819

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2406
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2407
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2406
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2411
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2413
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 2411
    const/16 v4, 0xd

    invoke-virtual {v0, v2, v4, v3}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2416
    goto :goto_0

    .line 2414
    :catch_0
    move-exception v2

    .line 2415
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2418
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOffVolte(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2237
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2239
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2240
    const/16 v1, 0x816

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2244
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2245
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2244
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2249
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2251
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 2249
    const/16 v4, 0xb

    invoke-virtual {v0, v2, v4, v3}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2254
    goto :goto_0

    .line 2252
    :catch_0
    move-exception v2

    .line 2253
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2256
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOffWfc(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2291
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2293
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2294
    const/16 v1, 0x817

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2298
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2299
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2298
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2303
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2305
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 2303
    const/16 v4, 0x10

    invoke-virtual {v0, v2, v4, v3}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2308
    goto :goto_0

    .line 2306
    :catch_0
    move-exception v2

    .line 2307
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2310
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnRcsUa(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2426
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2428
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2429
    const/16 v1, 0x876

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2433
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2434
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2433
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2438
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2440
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 2438
    const/16 v4, 0xe

    invoke-virtual {v0, v2, v4, v3}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2443
    goto :goto_0

    .line 2441
    :catch_0
    move-exception v2

    .line 2442
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2445
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnVilte(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2318
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2320
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2321
    const/16 v1, 0x818

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2325
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2326
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2325
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2330
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2332
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 2330
    const/16 v4, 0xc

    invoke-virtual {v0, v2, v4, v3}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2335
    goto :goto_0

    .line 2333
    :catch_0
    move-exception v2

    .line 2334
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2337
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnViwifi(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2372
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2374
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2375
    const/16 v1, 0x819

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2379
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2380
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2379
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2384
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2386
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 2384
    const/16 v4, 0xd

    invoke-virtual {v0, v2, v4, v3}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2389
    goto :goto_0

    .line 2387
    :catch_0
    move-exception v2

    .line 2388
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2391
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnVolte(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2210
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2212
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2213
    const/16 v1, 0x816

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2217
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2218
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2217
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2222
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2224
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 2222
    const/16 v4, 0xb

    invoke-virtual {v0, v2, v4, v3}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2227
    goto :goto_0

    .line 2225
    :catch_0
    move-exception v2

    .line 2226
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2229
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnWfc(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2264
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2266
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2267
    const/16 v1, 0x817

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2271
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2272
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2271
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2276
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2278
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 2276
    const/16 v4, 0x10

    invoke-virtual {v0, v2, v4, v3}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2281
    goto :goto_0

    .line 2279
    :catch_0
    move-exception v2

    .line 2280
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2283
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public unattendedCallTransfer(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1881
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->internalImsEct(Ljava/lang/String;ILandroid/os/Message;)V

    .line 1882
    return-void
.end method

.method unsljLog(I)V
    .locals 2
    .param p1, "response"    # I

    .line 5210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5211
    return-void
.end method

.method unsljLogMore(ILjava/lang/String;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "more"    # Ljava/lang/String;

    .line 5214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5215
    return-void
.end method

.method unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 5218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5219
    return-void
.end method

.method unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 5222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogv(Ljava/lang/String;)V

    .line 5223
    return-void
.end method

.method public videoRingtoneEventRequest(Ljava/util/ArrayList;Landroid/os/Message;)V
    .locals 5
    .param p2, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 5765
    .local p1, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 5766
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 5768
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5769
    const/16 v1, 0x88b

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 5773
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5777
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->videoRingtoneEventRequest(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5780
    goto :goto_0

    .line 5778
    :catch_0
    move-exception v2

    .line 5779
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "videoRingtoneEventRequest"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 5782
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "response"    # Landroid/os/Message;

    .line 2980
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2981
    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2983
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2984
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "> "

    if-nez v1, :cond_0

    .line 2985
    const/16 v1, 0x833

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2990
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2993
    :try_start_0
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v3, p1, p2, p3}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->vtDial(ILjava/lang/String;ILcom/android/internal/telephony/UUSInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2996
    goto :goto_0

    .line 2994
    :catch_0
    move-exception v3

    .line 2995
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "vtDial"

    invoke-direct {p0, v2, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2997
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 2998
    :cond_0
    const/16 v1, 0x82c

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3003
    .restart local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3006
    :try_start_1
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v3, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->vtDialWithSipUri(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3009
    goto :goto_1

    .line 3007
    :catch_1
    move-exception v3

    .line 3008
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v4, "vtDialWithSipUri"

    invoke-direct {p0, v2, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3012
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method
