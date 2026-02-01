.class public final Lcom/mediatek/gba/GbaManager;
.super Ljava/lang/Object;
.source "GbaManager.java"


# static fields
.field private static final DEFAULT_UA_SECURITY_PROTOCOL_ID_HTTP:[B

.field private static final DEFAULT_UA_SECURITY_PROTOCOL_ID_TLS:[B

.field public static final MTK_IMS_SERVICE:Ljava/lang/String; = "mtkIms"

.field private static final TAG:Ljava/lang/String; = "MtkGbaManager"

.field private static mGbaManager:Lcom/mediatek/gba/GbaManager;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/gba/GbaManager;->mGbaManager:Lcom/mediatek/gba/GbaManager;

    .line 28
    const/4 v0, 0x5

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/mediatek/gba/GbaManager;->DEFAULT_UA_SECURITY_PROTOCOL_ID_HTTP:[B

    .line 30
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/gba/GbaManager;->DEFAULT_UA_SECURITY_PROTOCOL_ID_TLS:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x2t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x2ft
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/mediatek/gba/GbaManager;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method private byteArrayToHexString([B)Ljava/lang/String;
    .locals 7
    .param p1, "data"    # [B

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p1, v2

    .line 186
    .local v3, "b":B
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%02x"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultGbaManager(Landroid/content/Context;)Lcom/mediatek/gba/GbaManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 37
    if-eqz p0, :cond_1

    .line 41
    const-class v0, Lcom/mediatek/gba/GbaManager;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/mediatek/gba/GbaManager;->mGbaManager:Lcom/mediatek/gba/GbaManager;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/mediatek/gba/GbaManager;

    invoke-direct {v1, p0}, Lcom/mediatek/gba/GbaManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mediatek/gba/GbaManager;->mGbaManager:Lcom/mediatek/gba/GbaManager;

    .line 46
    :cond_0
    sget-object v1, Lcom/mediatek/gba/GbaManager;->mGbaManager:Lcom/mediatek/gba/GbaManager;

    monitor-exit v0

    return-object v1

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private runNativeGba(Ljava/lang/String;[BZI)Lcom/mediatek/gba/NafSessionKey;
    .locals 18
    .param p1, "nafFqdn"    # Ljava/lang/String;
    .param p2, "nafSecureProtocolId"    # [B
    .param p3, "forceRun"    # Z
    .param p4, "subId"    # I

    .line 96
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runNativeGba, nafFqdn = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v8, p1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", nafSecureProtocolId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    move-object/from16 v9, p2

    invoke-direct {v1, v9}, Lcom/mediatek/gba/GbaManager;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", forceRun = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v10, p3

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", subId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v11, p4

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string v12, "MtkGbaManager"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v13, 0x0

    .line 103
    .local v13, "nafkey":Lcom/mediatek/gba/NafSessionKey;
    const-string v0, "mtkIms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    .line 104
    .local v14, "b":Landroid/os/IBinder;
    const/4 v15, 0x0

    if-nez v14, :cond_0

    .line 105
    const-string v0, "Service is unavailable binder is null"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-object v15

    .line 109
    :cond_0
    invoke-static {v14}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v16

    .line 110
    .local v16, "mMtkImsService":Lcom/mediatek/ims/internal/IMtkImsService;
    if-nez v16, :cond_1

    .line 111
    const-string v0, "Service is unavailable mImsService is null"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-object v15

    .line 115
    :cond_1
    invoke-static/range {p4 .. p4}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v17

    .line 116
    .local v17, "phoneId":I
    if-gez v17, :cond_2

    .line 117
    const-string v0, "invalid subId"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-object v15

    .line 122
    :cond_2
    const/4 v6, 0x0

    move-object/from16 v2, v16

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, v17

    :try_start_0
    invoke-interface/range {v2 .. v7}, Lcom/mediatek/ims/internal/IMtkImsService;->runGbaAuthentication(Ljava/lang/String;[BZII)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v0

    move-object v13, v0

    .line 128
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lcom/mediatek/gba/NafSessionKey;->getKey()[B

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 131
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runNativeGba, Key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v13}, Lcom/mediatek/gba/NafSessionKey;->getKey()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mediatek/gba/GbaManager;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Btid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    invoke-virtual {v13}, Lcom/mediatek/gba/NafSessionKey;->getBtid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 129
    :cond_4
    :goto_0
    const-string v0, "runNativeGba failed"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_1
    nop

    .line 139
    return-object v13

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RemotaException mImsService.runGbaAuthentication()"

    invoke-static {v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-object v15
.end method

.method private static supportMdAutoSetupIms()Z
    .locals 3

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "r":Z
    const-string v1, "ro.vendor.md_auto_setup_ims"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const/4 v0, 0x1

    goto :goto_0

    .line 178
    :cond_0
    const-string v1, "MtkGbaManager"

    const-string v2, "Not supportMdAutoSetupIms"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_0
    return v0
.end method


# virtual methods
.method public getNafSecureProtocolId(ZLjava/lang/String;)[B
    .locals 6
    .param p1, "isTls"    # Z
    .param p2, "cipher"    # Ljava/lang/String;

    .line 152
    sget-object v0, Lcom/mediatek/gba/GbaManager;->DEFAULT_UA_SECURITY_PROTOCOL_ID_TLS:[B

    .line 154
    .local v0, "uaId":[B
    const-string v1, "MtkGbaManager"

    if-eqz p1, :cond_1

    .line 155
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 156
    invoke-static {p2}, Lcom/mediatek/gba/GbaCipherSuite;->getByName(Ljava/lang/String;)Lcom/mediatek/gba/GbaCipherSuite;

    move-result-object v2

    .line 157
    .local v2, "cipherSuite":Lcom/mediatek/gba/GbaCipherSuite;
    if-eqz v2, :cond_0

    .line 158
    invoke-virtual {v2}, Lcom/mediatek/gba/GbaCipherSuite;->getCode()[B

    move-result-object v3

    .line 159
    .local v3, "cipherSuiteCode":[B
    const/4 v4, 0x0

    aget-byte v4, v3, v4

    const/4 v5, 0x3

    aput-byte v4, v0, v5

    .line 160
    const/4 v4, 0x1

    aget-byte v4, v3, v4

    const/4 v5, 0x4

    aput-byte v4, v0, v5

    .line 161
    .end local v3    # "cipherSuiteCode":[B
    goto :goto_0

    .line 162
    :cond_0
    const-string v3, "unknown cipher"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .end local v2    # "cipherSuite":Lcom/mediatek/gba/GbaCipherSuite;
    :goto_0
    goto :goto_1

    .line 166
    :cond_1
    sget-object v0, Lcom/mediatek/gba/GbaManager;->DEFAULT_UA_SECURITY_PROTOCOL_ID_HTTP:[B

    .line 168
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNafSecureProtocolId isTls = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cipher = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uaId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 169
    invoke-direct {p0, v0}, Lcom/mediatek/gba/GbaManager;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-object v0
.end method

.method public runGbaAuthentication(Ljava/lang/String;[BZ)Lcom/mediatek/gba/NafSessionKey;
    .locals 2
    .param p1, "nafFqdn"    # Ljava/lang/String;
    .param p2, "nafSecureProtocolId"    # [B
    .param p3, "forceRun"    # Z

    .line 66
    invoke-static {}, Lcom/mediatek/gba/GbaManager;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 68
    .local v0, "subId":I
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/gba/GbaManager;->runNativeGba(Ljava/lang/String;[BZI)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v1

    return-object v1

    .line 70
    .end local v0    # "subId":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public runGbaAuthentication(Ljava/lang/String;[BZI)Lcom/mediatek/gba/NafSessionKey;
    .locals 1
    .param p1, "nafFqdn"    # Ljava/lang/String;
    .param p2, "nafSecureProtocolId"    # [B
    .param p3, "forceRun"    # Z
    .param p4, "subId"    # I

    .line 87
    invoke-static {}, Lcom/mediatek/gba/GbaManager;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/gba/GbaManager;->runNativeGba(Ljava/lang/String;[BZI)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
