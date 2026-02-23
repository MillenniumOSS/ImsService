.class public Lcom/mediatek/ims/ImsEcbmProxy;
.super Landroid/telephony/ims/stub/ImsEcbmImplBase;
.source "ImsEcbmProxy.java"


# static fields
.field protected static final EVENT_ON_ENTER_ECBM:I = 0x1

.field protected static final EVENT_ON_EXIT_ECBM:I = 0x2

.field protected static final EVENT_ON_NO_ECBM:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "ImsEcbmProxy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandleExitEcbmInd:Z

.field private final mHandler:Landroid/os/Handler;

.field private mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

.field private mPhoneId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandleExitEcbmInd(Lcom/mediatek/ims/ImsEcbmProxy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mHandleExitEcbmInd:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmHandleExitEcbmInd(Lcom/mediatek/ims/ImsEcbmProxy;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mHandleExitEcbmInd:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldEnterImsEcbm(Lcom/mediatek/ims/ImsEcbmProxy;)Z
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/ims/ImsEcbmProxy;->shouldEnterImsEcbm()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtryTurnOffVolteAfterE911(Lcom/mediatek/ims/ImsEcbmProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/ims/ImsEcbmProxy;->tryTurnOffVolteAfterE911()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p3, "phoneId"    # I

    .line 103
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsEcbmImplBase;-><init>()V

    .line 74
    new-instance v0, Lcom/mediatek/ims/ImsEcbmProxy$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/ImsEcbmProxy$1;-><init>(Lcom/mediatek/ims/ImsEcbmProxy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mHandler:Landroid/os/Handler;

    .line 104
    const-string v0, "new EcbmProxy"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsEcbmProxy;->logWithPhoneId(Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 107
    iput p3, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mPhoneId:I

    .line 108
    iget v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mPhoneId:I

    invoke-static {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    .line 110
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    if-nez v0, :cond_0

    .line 111
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForOnEnterECBM(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForOnExitECBM(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForOnNoECBM(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 117
    return-void
.end method

.method private getSubIdUsingPhoneId(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 214
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 215
    .local v0, "subIds":[I
    const/4 v1, -0x1

    .line 216
    .local v1, "subId":I
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 217
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 219
    :cond_0
    return v1
.end method

.method private isVoLteOrVoNrAvailable()Z
    .locals 8

    .line 182
    iget v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsEcbmProxy;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 183
    .local v0, "subId":I
    const/4 v1, 0x0

    .line 184
    .local v1, "isVolteAvailable":Z
    const/4 v2, 0x0

    .line 187
    .local v2, "isVoNrAvailable":Z
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-static {v0}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v5

    .line 188
    .local v5, "imsMmTelManager":Landroid/telephony/ims/ImsMmTelManager;
    invoke-virtual {v5, v4, v3}, Landroid/telephony/ims/ImsMmTelManager;->isAvailable(II)Z

    move-result v6

    move v1, v6

    .line 191
    const/4 v6, 0x3

    invoke-virtual {v5, v4, v6}, Landroid/telephony/ims/ImsMmTelManager;->isAvailable(II)Z

    move-result v6

    move v2, v6

    .line 194
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isVoLteOrVoNrAvailable:subId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", volte:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", vonr:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/ims/ImsEcbmProxy;->logWithPhoneId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v5    # "imsMmTelManager":Landroid/telephony/ims/ImsMmTelManager;
    goto :goto_0

    .line 196
    :catch_0
    move-exception v5

    .line 197
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isVoLteOrVoNrAvailable exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ImsEcbmProxy"

    invoke-static {v7, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    return v3
.end method

.method private isWifiCallingAvailable()Z
    .locals 3

    .line 208
    iget v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsEcbmProxy;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 209
    .local v0, "subId":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 210
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isWifiCallingAvailable()Z

    move-result v2

    return v2
.end method

.method private logWithPhoneId(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsEcbmProxy"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method

.method private shouldEnterImsEcbm()Z
    .locals 5

    .line 156
    iget v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mPhoneId:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 157
    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 159
    .local v0, "isSimAbsent":Z
    :goto_0
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/mediatek/ims/ImsEcbmProxy;->isVoLteOrVoNrAvailable()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/mediatek/ims/ImsEcbmProxy;->isWifiCallingAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 164
    :cond_1
    const-string v3, "persist.vendor.operator.optr"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "OP12"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    return v2

    .line 168
    :cond_2
    return v1

    .line 160
    :cond_3
    :goto_1
    const-string v1, "shouldEnterImsEcbm true"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsEcbmProxy;->logWithPhoneId(Ljava/lang/String;)V

    .line 161
    return v2
.end method

.method private tryTurnOffVolteAfterE911()V
    .locals 8

    .line 135
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 136
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v1

    .line 137
    .local v1, "volteEnabledByPlatform":Z
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v2

    .line 138
    .local v2, "volteEnabledByUser":Z
    const-string v3, "persist.vendor.mtk.volte.enable"

    iget v4, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mPhoneId:I

    invoke-static {v3, v4}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v3

    .line 141
    .local v3, "volteOn":I
    iget-object v4, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-virtual {v4}, Lcom/mediatek/ims/ImsServiceCallTracker;->getEnableVolteForImsEcc()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 143
    :cond_0
    iget-object v4, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget v7, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mPhoneId:I

    invoke-static {v4, v6, v7, v5}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->triggerSendCfgForVolte(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;II)V

    .line 144
    iget-object v4, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-virtual {v4, v5}, Lcom/mediatek/ims/ImsServiceCallTracker;->setEnableVolteForImsEcc(Z)V

    .line 145
    const/4 v3, 0x0

    .line 148
    :cond_1
    iget-object v4, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-virtual {v4}, Lcom/mediatek/ims/ImsServiceCallTracker;->getEnableVowifiForImsEcc()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v4

    if-nez v4, :cond_2

    .line 149
    iget-object v4, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget v7, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mPhoneId:I

    invoke-static {v4, v6, v7, v3, v5}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->triggerSendCfgForVowifi(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;III)V

    .line 150
    iget-object v4, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-virtual {v4, v5}, Lcom/mediatek/ims/ImsServiceCallTracker;->setEnableVowifiForImsEcc(Z)V

    .line 152
    :cond_2
    return-void
.end method


# virtual methods
.method public exitEmergencyCallbackMode()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "request exit ECBM"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsEcbmProxy;->logWithPhoneId(Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mHandleExitEcbmInd:Z

    .line 127
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->requestExitEmergencyCallbackMode(Landroid/os/Message;)V

    goto :goto_0

    .line 129
    :cond_0
    const-string v0, "request exit ECBM failed"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsEcbmProxy;->logWithPhoneId(Ljava/lang/String;)V

    .line 131
    :goto_0
    return-void
.end method

.method public getImsOemCallUtil()Lcom/mediatek/ims/plugin/ImsCallOemPlugin;
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v0

    .line 173
    .local v0, "facotry":Lcom/mediatek/ims/plugin/OemPluginFactory;
    iget-object v1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsCallPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    move-result-object v1

    return-object v1
.end method
