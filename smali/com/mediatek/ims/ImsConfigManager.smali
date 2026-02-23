.class public Lcom/mediatek/ims/ImsConfigManager;
.super Ljava/lang/Object;
.source "ImsConfigManager.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "ImsConfigManager"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mImsConfigAdapterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/config/internal/ImsConfigAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mImsConfigInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/config/internal/ImsConfigImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mMtkImsConfigInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/internal/IMtkImsConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/mediatek/ims/ImsConfigManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetVdpProvision(Lcom/mediatek/ims/ImsConfigManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsConfigManager;->setVdpProvision(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 81
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 82
    const-string v0, "persist.vendor.log.tel_dbg"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    sput-boolean v1, Lcom/mediatek/ims/ImsConfigManager;->DEBUG:Z

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imsRILAdapters"    # [Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigAdapterMap:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mMtkImsConfigInstanceMap:Ljava/util/Map;

    .line 100
    new-instance v0, Lcom/mediatek/ims/ImsConfigManager$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/ImsConfigManager$1;-><init>(Lcom/mediatek/ims/ImsConfigManager;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 140
    sget-boolean v0, Lcom/mediatek/ims/ImsConfigManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ImsConfigManager"

    const-string v1, "ImsConfigManager Enter"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    iput-object p1, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    .line 143
    iput-object p2, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 147
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v1, "com.mediatek.ims.config.action.CONFIG_LOADED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    return-void
.end method

.method private getImsConfigAdapter(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;I)Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imsRilAdapters"    # [Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p3, "phoneId"    # I

    .line 245
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigAdapterMap:Ljava/util/Map;

    monitor-enter v0

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigAdapterMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigAdapterMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    .local v1, "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    goto :goto_0

    .line 249
    .end local v1    # "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    :cond_0
    sget-boolean v1, Lcom/mediatek/ims/ImsConfigManager;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ImsConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init ImsConfigAdapter phone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_1
    new-instance v1, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    aget-object v2, p2, p3

    invoke-direct {v1, p1, v2, p3}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V

    .line 251
    .restart local v1    # "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    iget-object v2, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigAdapterMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :goto_0
    monitor-exit v0

    .line 254
    return-object v1

    .line 253
    .end local v1    # "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setVdpProvision(II)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "value"    # I

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    if-gez p1, :cond_0

    return-void

    .line 261
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ImsConfigManager;->getEx(I)Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v0

    .line 262
    .local v0, "imsConfig":Lcom/mediatek/ims/internal/IMtkImsConfig;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 263
    .local v3, "keys":[Ljava/lang/String;
    new-array v2, v2, [Ljava/lang/String;

    .line 264
    .local v2, "values":[Ljava/lang/String;
    const-string v4, "provision_setting_vdp"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 265
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    .line 267
    :try_start_0
    invoke-interface {v0, v3, v2, p1}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setModemImsCfg([Ljava/lang/String;[Ljava/lang/String;I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    goto :goto_0

    .line 268
    :catch_0
    move-exception v4

    .line 269
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setModemImsCfg fail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public get(I)Lcom/android/ims/internal/IImsConfig;
    .locals 7
    .param p1, "phoneId"    # I

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "imsConfigImpl":Lcom/mediatek/ims/config/internal/ImsConfigImpl;
    const/4 v1, 0x0

    .line 185
    .local v1, "instance":Lcom/android/ims/internal/IImsConfig;
    iget-object v2, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {p0, v2, v3, p1}, Lcom/mediatek/ims/ImsConfigManager;->getImsConfigAdapter(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;I)Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    move-result-object v2

    .line 187
    .local v2, "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    iget-object v3, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    monitor-enter v3

    .line 188
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 189
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    invoke-virtual {v4}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->getIImsConfig()Lcom/android/ims/internal/IImsConfig;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "instance":Lcom/android/ims/internal/IImsConfig;
    .local v4, "instance":Lcom/android/ims/internal/IImsConfig;
    goto :goto_0

    .line 191
    .end local v4    # "instance":Lcom/android/ims/internal/IImsConfig;
    .restart local v1    # "instance":Lcom/android/ims/internal/IImsConfig;
    :cond_0
    new-instance v4, Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    iget-object v5, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v6, v6, p1

    invoke-direct {v4, v5, v6, v2, p1}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/config/internal/ImsConfigAdapter;I)V

    move-object v0, v4

    .line 192
    invoke-virtual {v0}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->getIImsConfig()Lcom/android/ims/internal/IImsConfig;

    move-result-object v4

    move-object v1, v4

    .line 193
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :goto_0
    monitor-exit v3

    .line 196
    return-object v1

    .line 195
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getEx(I)Lcom/mediatek/ims/internal/IMtkImsConfig;
    .locals 11
    .param p1, "phoneId"    # I

    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, "imsConfigImpl":Lcom/mediatek/ims/config/internal/ImsConfigImpl;
    const/4 v2, 0x0

    .line 209
    .local v2, "instance":Lcom/android/ims/internal/IImsConfig;
    const/4 v3, 0x0

    .line 211
    .local v3, "instanceEx":Lcom/mediatek/ims/internal/IMtkImsConfig;
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {p0, v0, v4, p1}, Lcom/mediatek/ims/ImsConfigManager;->getImsConfigAdapter(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;I)Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    move-result-object v9

    .line 213
    .local v9, "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    monitor-enter v4

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v0, :cond_0

    .line 215
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    invoke-virtual {v0}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->getIImsConfig()Lcom/android/ims/internal/IImsConfig;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v0

    .end local v2    # "instance":Lcom/android/ims/internal/IImsConfig;
    .local v0, "instance":Lcom/android/ims/internal/IImsConfig;
    goto :goto_0

    .line 222
    .end local v0    # "instance":Lcom/android/ims/internal/IImsConfig;
    .restart local v2    # "instance":Lcom/android/ims/internal/IImsConfig;
    :catchall_0
    move-exception v0

    move v10, p1

    goto/16 :goto_3

    .line 217
    :cond_0
    :try_start_2
    new-instance v0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    iget-object v5, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v6, v6, p1

    invoke-direct {v0, v5, v6, v9, p1}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/config/internal/ImsConfigAdapter;I)V

    move-object v1, v0

    .line 219
    invoke-virtual {v1}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->getIImsConfig()Lcom/android/ims/internal/IImsConfig;

    move-result-object v0

    move-object v2, v0

    .line 220
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object v8, v2

    .line 222
    .end local v2    # "instance":Lcom/android/ims/internal/IImsConfig;
    .local v8, "instance":Lcom/android/ims/internal/IImsConfig;
    :goto_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 224
    iget-object v2, p0, Lcom/mediatek/ims/ImsConfigManager;->mMtkImsConfigInstanceMap:Ljava/util/Map;

    monitor-enter v2

    .line 225
    :try_start_4
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mMtkImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_1

    .line 226
    :try_start_5
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mMtkImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/IMtkImsConfig;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v10, p1

    move-object v3, v0

    .end local v3    # "instanceEx":Lcom/mediatek/ims/internal/IMtkImsConfig;
    .local v0, "instanceEx":Lcom/mediatek/ims/internal/IMtkImsConfig;
    goto :goto_1

    .line 232
    .end local v0    # "instanceEx":Lcom/mediatek/ims/internal/IMtkImsConfig;
    .restart local v3    # "instanceEx":Lcom/mediatek/ims/internal/IMtkImsConfig;
    :catchall_1
    move-exception v0

    move v10, p1

    goto :goto_2

    .line 228
    :cond_1
    :try_start_6
    new-instance v5, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;

    iget-object v6, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v7, v0, p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move v10, p1

    .end local p1    # "phoneId":I
    .local v10, "phoneId":I
    :try_start_7
    invoke-direct/range {v5 .. v10}, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/android/ims/internal/IImsConfig;Lcom/mediatek/ims/config/internal/ImsConfigAdapter;I)V

    move-object v3, v5

    .line 230
    iget-object p1, p0, Lcom/mediatek/ims/ImsConfigManager;->mMtkImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :goto_1
    monitor-exit v2

    .line 233
    return-object v3

    .line 232
    .end local v10    # "phoneId":I
    .restart local p1    # "phoneId":I
    :catchall_2
    move-exception v0

    move v10, p1

    .end local p1    # "phoneId":I
    .restart local v10    # "phoneId":I
    :goto_2
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_2

    .line 222
    .end local v10    # "phoneId":I
    .restart local p1    # "phoneId":I
    :catchall_4
    move-exception v0

    move v10, p1

    move-object v2, v8

    .end local p1    # "phoneId":I
    .restart local v10    # "phoneId":I
    goto :goto_3

    .end local v8    # "instance":Lcom/android/ims/internal/IImsConfig;
    .end local v10    # "phoneId":I
    .restart local v2    # "instance":Lcom/android/ims/internal/IImsConfig;
    .restart local p1    # "phoneId":I
    :catchall_5
    move-exception v0

    move v10, p1

    .end local p1    # "phoneId":I
    .restart local v10    # "phoneId":I
    :goto_3
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_3
.end method

.method public init(I[Lcom/mediatek/ims/ril/ImsCommandsInterface;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "imsRILAdapters"    # [Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "imsConfigImpl":Lcom/mediatek/ims/config/internal/ImsConfigImpl;
    if-eqz p2, :cond_0

    .line 162
    iput-object p2, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {p0, v1, v2, p1}, Lcom/mediatek/ims/ImsConfigManager;->getImsConfigAdapter(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;I)Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    move-result-object v1

    .line 166
    .local v1, "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    sget-boolean v2, Lcom/mediatek/ims/ImsConfigManager;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ImsConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init ImsConfigImpl phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    monitor-enter v2

    .line 168
    :try_start_0
    new-instance v3, Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v5, v5, p1

    invoke-direct {v3, v4, v5, v1, p1}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/config/internal/ImsConfigAdapter;I)V

    move-object v0, v3

    .line 170
    iget-object v3, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    monitor-exit v2

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
