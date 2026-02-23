.class public Lcom/mediatek/ims/rcs/UaServiceManager;
.super Ljava/lang/Object;
.source "UaServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;,
        Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;,
        Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;,
        Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;,
        Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;
    }
.end annotation


# static fields
.field private static final EXTRA_OPTIONS:Ljava/lang/String; = "service_options"

.field private static final EXTRA_PHONE_ID:Ljava/lang/String; = "phone_id"

.field private static volatile INSTANCE:Lcom/mediatek/ims/rcs/UaServiceManager; = null

.field private static final LOG_TAG:Ljava/lang/String; = "[SR-IMS][UaServiceManager]"

.field private static final OPTION_DEREG_SUSPEND:Ljava/lang/String; = "OPTION_DEREG_SUSPEND"

.field private static final OPTION_ROI_SUPPORT:Ljava/lang/String; = "OPTION_ROI_SUPPORT"

.field public static final REG_MODE_IMS:I = 0x1

.field public static final REG_MODE_INTERNET:I = 0x2

.field private static final REG_STATE_DEREGISTERING:I = 0x3

.field private static final REG_STATE_NOT_REGISTERED:I = 0x0

.field private static final REG_STATE_REGISTERED:I = 0x2

.field private static final REG_STATE_REGISTERING:I = 0x1


# instance fields
.field acsSupported:Z

.field private callbackHandler:Landroid/os/Handler;

.field private hdlrThread:Landroid/os/HandlerThread;

.field private mContext:Landroid/content/Context;

.field mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;",
            ">;"
        }
    .end annotation
.end field

.field rcsActivated:Z

.field private serviceStarted:Z


# direct methods
.method public static synthetic $r8$lambda$4pOhGc9j5JfQFumXCHRHRxFXH0M(Lcom/mediatek/ims/rcs/UaServiceManager;ILcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/rcs/UaServiceManager;->lambda$registerStateCallback$0(ILcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcallbackHandler(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->callbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mlogD(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 1095
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1148
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1096
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mContext:Landroid/content/Context;

    .line 1097
    invoke-direct {p0}, Lcom/mediatek/ims/rcs/UaServiceManager;->isAcsAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->acsSupported:Z

    .line 1098
    const-string v0, "persist.vendor.service.rcs"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->rcsActivated:Z

    .line 1099
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/mediatek/ims/rcs/UaServiceManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 96
    sget-object v0, Lcom/mediatek/ims/rcs/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcs/UaServiceManager;

    if-nez v0, :cond_1

    .line 97
    const-class v0, Lcom/mediatek/ims/rcs/UaServiceManager;

    monitor-enter v0

    .line 98
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/rcs/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcs/UaServiceManager;

    if-nez v1, :cond_0

    .line 99
    new-instance v1, Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcs/UaServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mediatek/ims/rcs/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 101
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 103
    :cond_1
    :goto_0
    sget-object v0, Lcom/mediatek/ims/rcs/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcs/UaServiceManager;

    return-object v0
.end method

.method public static deleteInstance()V
    .locals 2

    .line 107
    sget-object v0, Lcom/mediatek/ims/rcs/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcs/UaServiceManager;

    if-eqz v0, :cond_1

    .line 108
    sget-object v0, Lcom/mediatek/ims/rcs/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcs/UaServiceManager;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 109
    .local v1, "context":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->stopService()V

    .line 110
    .end local v1    # "context":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    goto :goto_0

    .line 111
    :cond_0
    sget-object v0, Lcom/mediatek/ims/rcs/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcs/UaServiceManager;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 112
    sget-object v0, Lcom/mediatek/ims/rcs/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcs/UaServiceManager;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager;->hdlrThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 113
    sget-object v0, Lcom/mediatek/ims/rcs/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcs/UaServiceManager;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager;->hdlrThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 114
    sget-object v0, Lcom/mediatek/ims/rcs/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcs/UaServiceManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mediatek/ims/rcs/UaServiceManager;->hdlrThread:Landroid/os/HandlerThread;

    .line 117
    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;
    .locals 1

    .line 120
    sget-object v0, Lcom/mediatek/ims/rcs/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcs/UaServiceManager;

    return-object v0
.end method

.method private isAcsAvailable()Z
    .locals 4

    .line 1116
    const/4 v0, 0x0

    .line 1117
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1119
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.mediatek.rcs.provisioning"

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 1121
    goto :goto_0

    .line 1120
    :catch_0
    move-exception v3

    .line 1123
    :goto_0
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private isRcsUaAvailable()Z
    .locals 6

    .line 1102
    const-string v0, "persist.vendor.mtk_rcs_ua_support"

    .line 1103
    .local v0, "name":Ljava/lang/String;
    const-string v1, "persist.vendor.mtk_rcs_ua_support"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1105
    .local v1, "uaSupported":I
    const/4 v3, 0x0

    .line 1106
    .local v3, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1108
    .local v4, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v5, "com.mediatek.ims.rcsua.service"

    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    .line 1110
    goto :goto_0

    .line 1109
    :catch_0
    move-exception v5

    .line 1112
    :goto_0
    if-eqz v3, :cond_0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    move v2, v5

    :cond_0
    return v2
.end method

.method static synthetic lambda$registerSipCallback$1(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;I)V
    .locals 2
    .param p0, "serviceContext"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    .param p1, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;
    .param p2, "phoneId"    # I

    .line 289
    const/4 v0, 0x0

    .line 291
    .local v0, "available":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getSipChannel()Lcom/mediatek/ims/rcsua/service/ISipChannel;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/ISipChannel;->isAvailable()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 293
    goto :goto_0

    .line 292
    :catch_0
    move-exception v1

    .line 294
    :goto_0
    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p1, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;->onAvailable(I)V

    goto :goto_1

    .line 297
    :cond_0
    invoke-virtual {p1, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;->onUnavailable(I)V

    .line 298
    :goto_1
    return-void
.end method

.method private synthetic lambda$registerStateCallback$0(ILcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 164
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->getRegistrationInfo(I)Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->getRegState()I

    move-result v0

    .line 165
    .local v0, "regState":I
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->getRegistrationInfo(I)Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->getRegMode()I

    move-result v1

    .line 166
    .local v1, "regMode":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 174
    :pswitch_0
    invoke-virtual {p2, p1, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->onDeregistering(II)V

    .line 175
    goto :goto_0

    .line 177
    :pswitch_1
    invoke-virtual {p2, p1, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->onRegistered(II)V

    goto :goto_0

    .line 171
    :pswitch_2
    invoke-virtual {p2, p1, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->onRegistering(II)V

    .line 172
    goto :goto_0

    .line 168
    :pswitch_3
    invoke-virtual {p2, p1, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->onDeregistered(II)V

    .line 169
    nop

    .line 180
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private logD(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 1127
    const-string v0, "[SR-IMS][UaServiceManager]"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    return-void
.end method

.method private logE(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 1139
    const-string v0, "[SR-IMS][UaServiceManager]"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    return-void
.end method

.method private logI(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 1131
    const-string v0, "[SR-IMS][UaServiceManager]"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    return-void
.end method

.method private logW(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 1135
    const-string v0, "[SR-IMS][UaServiceManager]"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    return-void
.end method


# virtual methods
.method public activate(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]activate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->activate()V

    .line 235
    :cond_0
    return-void
.end method

.method public addCapability(ILcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "capability"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]addCapability >> capability["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->addCapability(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 248
    :cond_0
    return-void
.end method

.method public deactivate(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]deactivate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->deactivate()V

    .line 241
    :cond_0
    return-void
.end method

.method public getAcsConfigInt(ILjava/lang/String;)I
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "config"    # Ljava/lang/String;

    .line 340
    const/4 v0, 0x0

    .line 342
    .local v0, "result":I
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/mediatek/ims/rcs/UaServiceManager;->isAcsAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v1, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getAcsConfigInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 345
    :cond_0
    const-string v1, "Not ready to getAcsConfigInt"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->logE(Ljava/lang/String;)V

    .line 347
    :goto_0
    return v0
.end method

.method public getAcsConfigString(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "config"    # Ljava/lang/String;

    .line 351
    const/4 v0, 0x0

    .line 353
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/mediatek/ims/rcs/UaServiceManager;->isAcsAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v1, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 356
    :cond_0
    const-string v1, "Not ready to getAcsConfigString"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->logE(Ljava/lang/String;)V

    .line 358
    :goto_0
    return-object v0
.end method

.method public getAcsConfiguration(I)Lcom/mediatek/ims/rcsua/AcsConfiguration;
    .locals 3
    .param p1, "phoneId"    # I

    .line 329
    const/4 v0, 0x0

    .line 331
    .local v0, "configuration":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/mediatek/ims/rcs/UaServiceManager;->isAcsAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;

    move-result-object v0

    goto :goto_0

    .line 334
    :cond_0
    const-string v1, "Not ready to getAcsConfiguration"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->logE(Ljava/lang/String;)V

    .line 336
    :goto_0
    return-object v0
.end method

.method public getCallbackHandler()Landroid/os/Handler;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->callbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getCapabilities(I)Lcom/mediatek/ims/rcsua/Capability;
    .locals 2
    .param p1, "phoneId"    # I

    .line 377
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 377
    :goto_0
    return-object v0
.end method

.method public getRegistrationInfo(I)Lcom/mediatek/ims/rcsua/RegistrationInfo;
    .locals 3
    .param p1, "phoneId"    # I

    .line 382
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getImsClient()Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    move-result-object v0

    :goto_0
    nop

    .line 385
    .local v0, "imsClient":Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    const/4 v1, 0x0

    .line 386
    .local v1, "regInfo":Lcom/mediatek/ims/rcsua/RegistrationInfo;
    if-eqz v0, :cond_1

    .line 388
    :try_start_0
    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaClient;->getRegistrationInfo()Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 391
    goto :goto_1

    .line 389
    :catch_0
    move-exception v2

    .line 394
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    move-object v2, v1

    goto :goto_2

    :cond_2
    new-instance v2, Lcom/mediatek/ims/rcsua/RegistrationInfo;

    invoke-direct {v2}, Lcom/mediatek/ims/rcsua/RegistrationInfo;-><init>()V

    :goto_2
    return-object v2
.end method

.method public getUpdateRcsFeatureTagState(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 408
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 409
    .local v0, "serviceContext":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getUpdateRcsFeatureTagState()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public imsRegistered(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 373
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->getRegistrationInfo(I)Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->isRegistered()Z

    move-result v0

    return v0
.end method

.method public isActivated(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 368
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 369
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 368
    :goto_0
    return v0
.end method

.method public isCcNotified(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 419
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 420
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->isCcNotified()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 419
    :goto_0
    return v0
.end method

.method public readConfiguraion(I)Lcom/mediatek/ims/rcsua/Configuration;
    .locals 1
    .param p1, "phoneId"    # I

    .line 398
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->imsRegistered(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->getRegistrationInfo(I)Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->readImsConfiguration()Lcom/mediatek/ims/rcsua/Configuration;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public registerAcsCallback(ILcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]registerAcsCallback >> callback["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 211
    iget-boolean v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->acsSupported:Z

    if-nez v0, :cond_0

    .line 212
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 214
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->addAcsCallback(Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;)V

    .line 217
    return-void
.end method

.method public registerCallComposerCallback(ILcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;

    .line 193
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 194
    .local v0, "serviceContext":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]registerCallComposerCallback >> context["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "],callback["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 196
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->addCallComposerCallback(Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;)V

    .line 199
    :cond_0
    return-void
.end method

.method public registerSipCallback(ILcom/mediatek/ims/rcs/UaServiceManager$SipCallback;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]registerSipCallback >> callback["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 284
    .local v0, "serviceContext":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->addSipCallback(Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;)V

    .line 287
    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getSipChannel()Lcom/mediatek/ims/rcsua/service/ISipChannel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->callbackHandler:Landroid/os/Handler;

    new-instance v2, Lcom/mediatek/ims/rcs/UaServiceManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p2, p1}, Lcom/mediatek/ims/rcs/UaServiceManager$$ExternalSyntheticLambda1;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 301
    :cond_0
    return-void
.end method

.method public registerStateCallback(ILcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 156
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 157
    .local v0, "serviceContext":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]registerStateCallback >> context["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "],callback["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 159
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->addStateCallback(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V

    .line 162
    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getImsClient()Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->callbackHandler:Landroid/os/Handler;

    new-instance v2, Lcom/mediatek/ims/rcs/UaServiceManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$$ExternalSyntheticLambda0;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager;ILcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    :cond_0
    return-void
.end method

.method public removeCapability(ILcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "capability"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]removeCapability >> capability["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->removeCapability(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 255
    :cond_0
    return-void
.end method

.method public sendSipMessage(ILandroid/telephony/ims/SipMessage;)Z
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "message"    # Landroid/telephony/ims/SipMessage;

    .line 272
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 273
    .local v0, "serviceContext":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->sendSipMessage(Landroid/telephony/ims/SipMessage;)Z

    move-result v1

    return v1

    .line 277
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public serviceConnected(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 362
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 364
    .local v0, "context":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getUaService()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setCcNotified(IZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "isNotified"    # Z

    .line 413
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 414
    .local v0, "serviceContext":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->setCcNotified(Z)V

    .line 416
    :cond_0
    return-void
.end method

.method public setRcsClientConfiguration(ILandroid/telephony/ims/RcsClientConfiguration;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "rcc"    # Landroid/telephony/ims/RcsClientConfiguration;

    .line 313
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mediatek/ims/rcs/UaServiceManager;->isAcsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V

    goto :goto_0

    .line 316
    :cond_0
    const-string v0, "Not ready to setRcsClientconfiguration"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logE(Ljava/lang/String;)V

    .line 318
    :goto_0
    return-void
.end method

.method public setUpdateRcsFeatureTagState(IZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "state"    # Z

    .line 402
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 403
    .local v0, "serviceContext":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->setUpdateRcsFeatureTagState(Z)V

    .line 405
    :cond_0
    return-void
.end method

.method public startService(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]startService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lcom/mediatek/ims/rcs/UaServiceManager;->isRcsUaAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IMS-RCSUA-WORKER"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->hdlrThread:Landroid/os/HandlerThread;

    .line 128
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->hdlrThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 129
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->hdlrThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->callbackHandler:Landroid/os/Handler;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 133
    new-instance v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager;I)V

    .line 134
    .local v0, "serviceContext":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->startService()V

    .line 137
    .end local v0    # "serviceContext":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    :cond_1
    return-void
.end method

.method public stopService(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]stopService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 143
    .local v0, "serviceContext":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->stopService()V

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->hdlrThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->hdlrThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 150
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->hdlrThread:Landroid/os/HandlerThread;

    .line 153
    :cond_1
    return-void
.end method

.method public triggerAcsRequest(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "reason"    # I

    .line 321
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mediatek/ims/rcs/UaServiceManager;->isAcsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->triggerAcsRequest(I)V

    goto :goto_0

    .line 324
    :cond_0
    const-string v0, "Not ready to triggerAcRequest"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logE(Ljava/lang/String;)V

    .line 326
    :goto_0
    return-void
.end method

.method public triggerRestoration(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]triggerRestoration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->triggerRestoration()V

    .line 269
    :cond_0
    return-void
.end method

.method public unregisterAcsCallback(ILcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]unregisterAcsCallback >> callback["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 222
    if-nez p2, :cond_0

    .line 223
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 226
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->removeAcsCallback(Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;)V

    .line 229
    return-void
.end method

.method public unregisterCallComposerCallback(ILcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]unregisterCallComposerCallback >> callback["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->removeCallComposerCallback(Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;)V

    .line 206
    :cond_0
    return-void
.end method

.method public unregisterSipCallback(ILcom/mediatek/ims/rcs/UaServiceManager$SipCallback;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]unregisterSipCallback >> callback["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 307
    .local v0, "serviceContext":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->removeSipCallback(Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;)V

    .line 310
    :cond_0
    return-void
.end method

.method public unregisterStateCallback(ILcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]unregisterStateCallback >> callback["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->removeStateCallback(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V

    .line 190
    :cond_0
    return-void
.end method

.method public updateCapabilities(ILcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "capability"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]updateCapabilities >> capability["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 262
    :cond_0
    return-void
.end method
