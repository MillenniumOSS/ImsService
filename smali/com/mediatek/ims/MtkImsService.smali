.class public Lcom/mediatek/ims/MtkImsService;
.super Lcom/mediatek/ims/internal/IMtkImsService$Stub;
.source "MtkImsService.java"


# static fields
.field private static final DBG:Z = true

.field private static final ENGLOAD:Z

.field private static final LOG_TAG:Ljava/lang/String; = "MtkImsService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImsService:Lcom/mediatek/ims/ImsService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/MtkImsService;->ENGLOAD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/ImsService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imsService"    # Lcom/mediatek/ims/ImsService;

    .line 78
    invoke-direct {p0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 79
    iput-object p2, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 80
    iput-object p1, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    .line 81
    const-string v0, "init"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkImsService;->log(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method private englog(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 256
    sget-boolean v0, Lcom/mediatek/ims/MtkImsService;->ENGLOAD:Z

    if-eqz v0, :cond_0

    .line 257
    invoke-direct {p0, p1}, Lcom/mediatek/ims/MtkImsService;->log(Ljava/lang/String;)V

    .line 259
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 251
    const-string v0, "MtkImsService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 266
    const-string v0, "MtkImsService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 262
    const-string v0, "MtkImsService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void
.end method


# virtual methods
.method public addImsSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 272
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "addImsSmsListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/ImsService;->onAddImsSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 276
    return-void
.end method

.method public changeEnabledCapabilities(ILandroid/telephony/ims/feature/CapabilityChangeRequest;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 330
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "changeEnabledCapabilities"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/ImsService;->changeEnabledCapabilities(ILandroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 334
    return-void
.end method

.method public createMtkCallSession(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/android/ims/internal/IImsCallSession;)Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .param p4, "aospCallSessionImpl"    # Lcom/android/ims/internal/IImsCallSession;

    .line 178
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "createMtkCallSession"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/ims/ImsService;->onCreateMtkCallSession(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/android/ims/internal/IImsCallSession;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public deregisterIms(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 135
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "deregisterIms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->deregisterIms(I)V

    .line 139
    return-void
.end method

.method public fallBackAospMTFlow(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 315
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "fallBackAospMTFlow"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->fallBackAospMTFlow(I)V

    .line 319
    return-void
.end method

.method public getConfigInterfaceEx(I)Lcom/mediatek/ims/internal/IMtkImsConfig;
    .locals 4
    .param p1, "phoneId"    # I

    .line 155
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    .line 156
    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 158
    .local v0, "permissionCheck":I
    if-eqz v0, :cond_0

    .line 159
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    .line 160
    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 163
    :cond_0
    if-eqz v0, :cond_1

    .line 164
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "getConfigInterfaceEx"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsService;->bindAndRegisterWifiOffloadService()V

    .line 171
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsService;->getImsConfigManager()Lcom/mediatek/ims/ImsConfigManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/ImsConfigManager;->getEx(I)Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentCallCount(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 227
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->getCurrentCallCount(I)I

    move-result v0

    return v0
.end method

.method public getImsNetworkState(I)[I
    .locals 4
    .param p1, "capability"    # I

    .line 232
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    .line 233
    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 235
    .local v0, "permissionCheck":I
    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "getImsNetworkState"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/ImsService;->getImsNetworkState(I)[I

    move-result-object v1

    return-object v1
.end method

.method public getImsPdnStatus(I)I
    .locals 4
    .param p1, "phoneId"    # I

    .line 365
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    .line 366
    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 368
    .local v0, "permissionCheck":I
    if-eqz v0, :cond_0

    .line 369
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "getImsPdnStatus"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/ImsService;->getImsPdnStatus(I)I

    move-result v1

    return v1
.end method

.method public getImsState(I)I
    .locals 4
    .param p1, "phoneId"    # I

    .line 106
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    .line 107
    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 109
    .local v0, "permissionCheck":I
    if-eqz v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "getImsState"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/ImsService;->getImsState(I)I

    move-result v1

    return v1
.end method

.method public getModemMultiImsCount()I
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    .line 215
    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 217
    .local v0, "permissionCheck":I
    if-eqz v0, :cond_0

    .line 218
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "getModemMultiImsCount"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsService;->getModemMultiImsCount()I

    move-result v1

    return v1
.end method

.method public getMtkUtInterface(I)Lcom/mediatek/ims/internal/IMtkImsUt;
    .locals 1
    .param p1, "phoneId"    # I

    .line 199
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->onGetMtkUtInterface(I)Lcom/mediatek/ims/internal/IMtkImsUt;

    move-result-object v0

    return-object v0
.end method

.method public getPendingMtkCallSession(ILjava/lang/String;)Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    .line 187
    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 189
    .local v0, "permissionCheck":I
    if-eqz v0, :cond_0

    .line 190
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "getPendingMtkCallSession"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/ims/ImsService;->onGetPendingMtkCallSession(ILjava/lang/String;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v1

    return-object v1
.end method

.method public getWfcRegErrorCode(I)I
    .locals 4
    .param p1, "phoneId"    # I

    .line 344
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    .line 345
    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 347
    .local v0, "permissionCheck":I
    if-eqz v0, :cond_0

    .line 348
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "getWfcRegErrorCode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/ImsService;->getWfcRegErrorCode(I)I

    move-result v1

    return v1
.end method

.method public hangupAllCall(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 123
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "hangupAllCall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->onHangupAllCall(I)V

    .line 127
    return-void
.end method

.method public isCameraAvailable()Z
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CAMERA"

    const-string v2, "isCameraAvailable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isCameraAvailable()Z

    move-result v0

    return v0
.end method

.method public registerProprietaryImsListener(ILcom/android/ims/internal/IImsRegistrationListener;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;Z)V
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .param p3, "mtklistener"    # Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;
    .param p4, "notifyOnly"    # Z

    .line 299
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "registerProprietaryImsListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v3, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    const/4 v5, 0x1

    move v4, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    .end local p1    # "phoneId":I
    .end local p2    # "listener":Lcom/android/ims/internal/IImsRegistrationListener;
    .end local p3    # "mtklistener":Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;
    .end local p4    # "notifyOnly":Z
    .local v4, "phoneId":I
    .local v6, "listener":Lcom/android/ims/internal/IImsRegistrationListener;
    .local v7, "mtklistener":Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;
    .local v8, "notifyOnly":Z
    invoke-virtual/range {v3 .. v8}, Lcom/mediatek/ims/ImsService;->onAddRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;Z)V

    .line 304
    return-void
.end method

.method public runGbaAuthentication(Ljava/lang/String;[BZII)Lcom/mediatek/gba/NafSessionKey;
    .locals 9
    .param p1, "nafFqdn"    # Ljava/lang/String;
    .param p2, "nafSecureProtocolId"    # [B
    .param p3, "forceRun"    # Z
    .param p4, "netId"    # I
    .param p5, "phoneId"    # I

    .line 205
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "runGbaAuthentication"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v3, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .end local p1    # "nafFqdn":Ljava/lang/String;
    .end local p2    # "nafSecureProtocolId":[B
    .end local p3    # "forceRun":Z
    .end local p4    # "netId":I
    .end local p5    # "phoneId":I
    .local v4, "nafFqdn":Ljava/lang/String;
    .local v5, "nafSecureProtocolId":[B
    .local v6, "forceRun":Z
    .local v7, "netId":I
    .local v8, "phoneId":I
    invoke-virtual/range {v3 .. v8}, Lcom/mediatek/ims/ImsService;->onRunGbaAuthentication(Ljava/lang/String;[BZII)Lcom/mediatek/gba/NafSessionKey;

    move-result-object p1

    return-object p1
.end method

.method public sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 11
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "messageRef"    # I
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "smsc"    # Ljava/lang/String;
    .param p6, "isRetry"    # Z
    .param p7, "pdu"    # [B

    .line 281
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "sendSms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v3, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/mediatek/ims/ImsService;->sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 285
    return-void
.end method

.method public setCallIndication(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V
    .locals 11
    .param p1, "phoneId"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "callNum"    # Ljava/lang/String;
    .param p4, "seqNum"    # I
    .param p5, "toNumber"    # Ljava/lang/String;
    .param p6, "isAllow"    # Z
    .param p7, "cause"    # I

    .line 92
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setCallIndication"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v3, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/mediatek/ims/ImsService;->onSetCallIndication(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V

    .line 97
    return-void
.end method

.method public setImsPreCallInfo(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V
    .locals 10
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "fromUri"    # Ljava/lang/String;
    .param p5, "extraHeaders"    # Ljava/util/Map;
    .param p6, "location"    # [Ljava/lang/String;

    .line 357
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setImsPreCallInfo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v3, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    move-object v8, p5

    check-cast v8, Ljava/util/HashMap;

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v9, p6

    invoke-virtual/range {v3 .. v9}, Lcom/mediatek/ims/ImsService;->setImsPreCallInfo(IILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public setMTRedirect(IZ)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .line 308
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setMTRedirect"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/ImsService;->setMTRedirect(IZ)V

    .line 312
    return-void
.end method

.method public setSipHeader(ILjava/util/Map;Ljava/lang/String;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "extraHeaders"    # Ljava/util/Map;
    .param p3, "fromUri"    # Ljava/lang/String;

    .line 322
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "changeEnabledCapabilities"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    move-object v1, p2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1, p3}, Lcom/mediatek/ims/ImsService;->setSipHeader(ILjava/util/HashMap;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public setWfcRegErrorCode(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "errorCode"    # I

    .line 337
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setWfcRegErrorCode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/ImsService;->setWfcRegErrorCode(II)V

    .line 341
    return-void
.end method

.method public updateRadioState(II)V
    .locals 3
    .param p1, "radioState"    # I
    .param p2, "phoneId"    # I

    .line 147
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateRadioState"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/ImsService;->updateRadioState(II)V

    .line 151
    return-void
.end method
