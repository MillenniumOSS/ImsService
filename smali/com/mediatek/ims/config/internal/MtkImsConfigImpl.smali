.class public Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;
.super Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;
.source "MtkImsConfigImpl.java"


# static fields
.field private static final DEBUG:Z

.field private static final PROPERTY_IMSCONFIG_FORCE_NOTIFY:Ljava/lang/String; = "vendor.ril.imsconfig.force.notify"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final TAG:Ljava/lang/String; = "MtkImsConfigImpl"


# instance fields
.field private mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

.field private mContext:Landroid/content/Context;

.field private mImsCallOemPlugin:Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

.field private mImsCapabilities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mImsCapabilitiesIsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mImsConfig:Lcom/android/ims/internal/IImsConfig;

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 38
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
    sput-boolean v1, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->DEBUG:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/android/ims/internal/IImsConfig;Lcom/mediatek/ims/config/internal/ImsConfigAdapter;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imsRilAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p3, "imsConfig"    # Lcom/android/ims/internal/IImsConfig;
    .param p4, "adapter"    # Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    .param p5, "phoneId"    # I

    .line 68
    invoke-direct {p0}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCallOemPlugin:Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilitiesIsCache:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilities:Ljava/util/HashMap;

    .line 69
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    .line 70
    iput p5, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mPhoneId:I

    .line 72
    iput-object p3, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsConfig:Lcom/android/ims/internal/IImsConfig;

    .line 73
    iput-object p4, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    .line 76
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilities:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 95
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 77
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 76
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilities:Ljava/util/HashMap;

    .line 79
    nop

    .line 78
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilities:Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 81
    nop

    .line 80
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilities:Ljava/util/HashMap;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 83
    nop

    .line 82
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilities:Ljava/util/HashMap;

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 85
    nop

    .line 84
    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilities:Ljava/util/HashMap;

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 87
    nop

    .line 86
    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilities:Ljava/util/HashMap;

    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 89
    nop

    .line 88
    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilities:Ljava/util/HashMap;

    const/4 v9, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 91
    nop

    .line 90
    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilitiesIsCache:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilitiesIsCache:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilitiesIsCache:Ljava/util/HashMap;

    .line 98
    nop

    .line 97
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilitiesIsCache:Ljava/util/HashMap;

    .line 100
    nop

    .line 99
    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilitiesIsCache:Ljava/util/HashMap;

    .line 102
    nop

    .line 101
    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilitiesIsCache:Ljava/util/HashMap;

    .line 104
    nop

    .line 103
    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilitiesIsCache:Ljava/util/HashMap;

    .line 106
    nop

    .line 105
    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilitiesIsCache:Ljava/util/HashMap;

    .line 108
    nop

    .line 107
    invoke-virtual {v0, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method


# virtual methods
.method public getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    .locals 6
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "listener"    # Lcom/android/ims/ImsConfigListener;

    .line 243
    const-string v0, "getFeatureValue("

    const-string v1, "MtkImsConfigImpl"

    iget-object v2, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    .line 244
    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    .line 246
    .local v2, "permissionCheck":I
    if-eqz v2, :cond_0

    .line 247
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    .line 248
    const-string v4, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    .line 251
    :cond_0
    if-eqz v2, :cond_1

    .line 252
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PHONE_STATE"

    const-string v5, "getFeatureValue"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_1
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") : on phone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsConfig:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v3, p1, p2, p3}, Lcom/android/ims/internal/IImsConfig;->getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    nop

    .line 264
    return-void

    .line 260
    :catch_0
    move-exception v3

    .line 261
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") remote failed!"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getImsResCapability(I)I
    .locals 5
    .param p1, "feature"    # I

    .line 484
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    .line 485
    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 487
    .local v0, "permissionCheck":I
    if-eqz v0, :cond_0

    .line 488
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    .line 489
    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 492
    :cond_0
    if-eqz v0, :cond_1

    .line 493
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "getImsResCapability"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilitiesIsCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 502
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilities:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "value":I
    goto :goto_0

    .line 504
    .end local v1    # "value":I
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->getImsResCapability(I)I

    move-result v1

    .line 507
    .restart local v1    # "value":I
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    if-nez v1, :cond_3

    goto :goto_1

    .line 509
    :cond_3
    new-instance v2, Lcom/android/ims/ImsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " result value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " incorrect!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x65

    invoke-direct {v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v0    # "permissionCheck":I
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;
    .end local p1    # "feature":I
    throw v2
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    .restart local v0    # "permissionCheck":I
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;
    .restart local p1    # "feature":I
    :cond_4
    :goto_1
    return v1

    .line 514
    .end local v1    # "value":I
    :catch_0
    move-exception v1

    .line 515
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsResCapability("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") failed, code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkImsConfigImpl"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilities:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public getProvisionedStringValue(I)Ljava/lang/String;
    .locals 6
    .param p1, "item"    # I

    .line 158
    const-string v0, "getProvisionedStringValue("

    const-string v1, "MtkImsConfigImpl"

    iget-object v2, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    .line 159
    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    .line 161
    .local v2, "permissionCheck":I
    if-eqz v2, :cond_0

    .line 162
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    .line 163
    const-string v4, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    .line 166
    :cond_0
    if-eqz v2, :cond_1

    .line 167
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PHONE_STATE"

    const-string v5, "getProvisionedStringValue"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsConfig:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v3, p1}, Lcom/android/ims/internal/IImsConfig;->getProvisionedStringValue(I)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "result":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on phone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from binder pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 175
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", binder uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 176
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", process pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", process uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 177
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 174
    invoke-static {v1, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    return-object v3

    .line 180
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 181
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") remote failed!"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getProvisionedValue(I)I
    .locals 6
    .param p1, "item"    # I

    .line 121
    const-string v0, "getProvisionedValue("

    const-string v1, "MtkImsConfigImpl"

    iget-object v2, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    .line 122
    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    .line 124
    .local v2, "permissionCheck":I
    if-eqz v2, :cond_0

    .line 125
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    .line 126
    const-string v4, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    .line 129
    :cond_0
    if-eqz v2, :cond_1

    .line 130
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PHONE_STATE"

    const-string v5, "getProvisionedValue"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsConfig:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v3, p1}, Lcom/android/ims/internal/IImsConfig;->getProvisionedValue(I)I

    move-result v3

    .line 137
    .local v3, "result":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on phone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from binder pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 138
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", binder uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 139
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", process pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", process uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 140
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-static {v1, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    return v3

    .line 143
    .end local v3    # "result":I
    :catch_0
    move-exception v3

    .line 144
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") remote failed!"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getVideoQuality(Lcom/android/ims/ImsConfigListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/ImsConfigListener;

    .line 447
    return-void
.end method

.method public setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .locals 3
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;

    .line 278
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setFeatureValue"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsConfig:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/ims/internal/IImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    nop

    .line 288
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFeatureValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") remote failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkImsConfigImpl"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setImsResCapability(II)V
    .locals 5
    .param p1, "feature"    # I
    .param p2, "value"    # I

    .line 463
    const-string v0, "setImsResCapability("

    const-string v1, "MtkImsConfigImpl"

    iget-object v2, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    const-string v4, "setImsResCapability"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilities:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilitiesIsCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    :try_start_0
    sget-boolean v2, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from binder pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 474
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", binder uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 475
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 473
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->setImsResCapability(II)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    goto :goto_0

    .line 477
    :catch_0
    move-exception v2

    .line 478
    .local v2, "e":Lcom/android/ims/ImsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") failed, code: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/ims/ImsException;->getCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    .end local v2    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method

.method public setModemImsCfg([Ljava/lang/String;[Ljava/lang/String;I)[I
    .locals 4
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 572
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setModemImsCfg"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const/4 v0, 0x0

    .line 577
    .local v0, "result":[I
    const/4 v1, 0x0

    .line 579
    .local v1, "type":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setModemImsCfg phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkImsConfigImpl"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    invoke-virtual {v2, p1, p2, v1}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->setModemImsCfg([Ljava/lang/String;[Ljava/lang/String;I)[I

    move-result-object v0

    .line 582
    return-object v0
.end method

.method public setModemImsIwlanCfg([Ljava/lang/String;[Ljava/lang/String;I)[I
    .locals 4
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 614
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setModemImsIwlanCfg"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const/4 v0, 0x0

    .line 619
    .local v0, "result":[I
    const/4 v1, 0x2

    .line 621
    .local v1, "type":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setModemImsIwlanCfg phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkImsConfigImpl"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    invoke-virtual {v2, p1, p2, v1}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->setModemImsCfg([Ljava/lang/String;[Ljava/lang/String;I)[I

    move-result-object v0

    .line 624
    return-object v0
.end method

.method public setModemImsWoCfg([Ljava/lang/String;[Ljava/lang/String;I)[I
    .locals 4
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 593
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setModemImsWoCfg"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const/4 v0, 0x0

    .line 598
    .local v0, "result":[I
    const/4 v1, 0x1

    .line 600
    .local v1, "type":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setModemImsWoCfg phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkImsConfigImpl"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    invoke-virtual {v2, p1, p2, v1}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->setModemImsCfg([Ljava/lang/String;[Ljava/lang/String;I)[I

    move-result-object v0

    .line 603
    return-object v0
.end method

.method public setMultiFeatureValues([I[I[ILcom/android/ims/ImsConfigListener;)V
    .locals 18
    .param p1, "feature"    # [I
    .param p2, "network"    # [I
    .param p3, "value"    # [I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;

    .line 302
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    const-string v4, "setMultiFeatureValues onSetFeatureResponse remote failed!"

    const-string v5, "MtkImsConfigImpl"

    iget-object v0, v1, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.MODIFY_PHONE_STATE"

    const-string v7, "setMultiFeatureValues"

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const/4 v7, 0x1

    :try_start_0
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v0

    iget v8, v1, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mPhoneId:I

    if-ne v0, v8, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setMultiFeatureValues is not allow on non main capability phoneId:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, v1, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mPhoneId:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " in non MIMS project"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v0, Lcom/android/ims/ImsException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Do not setMultiFeatureValues for non MIMS not main capability phoneId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mPhoneId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x66

    invoke-direct {v0, v8, v9}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;
    .end local p1    # "feature":[I
    .end local p2    # "network":[I
    .end local p3    # "value":[I
    .end local p4    # "listener":Lcom/android/ims/ImsConfigListener;
    throw v0
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 328
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;
    .restart local p1    # "feature":[I
    .restart local p2    # "network":[I
    .restart local p3    # "value":[I
    .restart local p4    # "listener":Lcom/android/ims/ImsConfigListener;
    :cond_1
    :goto_0
    nop

    .line 332
    nop

    .line 335
    array-length v0, v2

    add-int/lit8 v8, v0, -0x1

    .line 336
    .local v8, "lastIndex":I
    aget v0, v2, v8

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x7

    const/4 v12, -0x1

    if-gt v0, v11, :cond_3

    aget v0, v2, v8

    if-le v0, v12, :cond_3

    aget v0, v2, v8

    if-eq v0, v10, :cond_3

    aget v0, v2, v8

    if-ne v0, v9, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v17, v7

    goto :goto_3

    .line 340
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setMultiFeatureValues, need swich lastIndex:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    add-int/lit8 v0, v8, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_5

    .line 342
    aget v13, v2, v0

    if-gt v13, v11, :cond_4

    aget v13, v2, v0

    if-le v13, v12, :cond_4

    aget v13, v2, v0

    if-eq v13, v10, :cond_4

    aget v13, v2, v0

    if-eq v13, v9, :cond_4

    .line 346
    aget v13, v2, v8

    .line 347
    .local v13, "tempFeature":I
    aget v14, p2, v8

    .line 348
    .local v14, "tempNetwork":I
    aget v15, p3, v8

    .line 349
    .local v15, "tempValue":I
    aget v16, v2, v0

    aput v16, v2, v8

    .line 350
    aget v16, p2, v0

    aput v16, p2, v8

    .line 351
    aget v16, p3, v0

    aput v16, p3, v8

    .line 352
    aput v13, v2, v0

    .line 353
    aput v14, p2, v0

    .line 354
    aput v15, p3, v0

    .line 355
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v7

    const-string v7, "setMultiFeatureValues, swich index:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    goto :goto_3

    .line 342
    .end local v13    # "tempFeature":I
    .end local v14    # "tempNetwork":I
    .end local v15    # "tempValue":I
    :cond_4
    move/from16 v17, v7

    .line 341
    add-int/lit8 v0, v0, -0x1

    move/from16 v7, v17

    goto :goto_2

    :cond_5
    move/from16 v17, v7

    .line 361
    .end local v0    # "i":I
    :goto_3
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_4
    array-length v0, v2

    if-ge v6, v0, :cond_f

    .line 364
    :try_start_1
    aget v0, v2, v6

    if-eq v0, v10, :cond_d

    aget v0, v2, v6

    if-eq v0, v9, :cond_d

    aget v0, v2, v6

    if-le v0, v12, :cond_d

    aget v0, v2, v6

    const/16 v7, 0x9

    if-le v0, v7, :cond_6

    goto/16 :goto_6

    .line 373
    :cond_6
    aget v0, v2, v6

    if-le v0, v11, :cond_7

    .line 374
    const/4 v0, -0x1

    .local v0, "isLast":I
    goto :goto_5

    .line 375
    .end local v0    # "isLast":I
    :cond_7
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    if-ne v6, v0, :cond_8

    .line 376
    const/4 v0, 0x1

    .restart local v0    # "isLast":I
    goto :goto_5

    .line 378
    .end local v0    # "isLast":I
    :cond_8
    const/4 v0, 0x0

    .line 382
    .restart local v0    # "isLast":I
    :goto_5
    aget v13, p3, v6

    move/from16 v14, v17

    if-ne v13, v14, :cond_9

    .line 383
    const-string v13, "1"

    const-string v14, "persist.vendor.mtk_dynamic_ims_switch"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    aget v13, v2, v6

    const/16 v14, 0x8

    if-eq v13, v14, :cond_9

    aget v13, v2, v6

    if-eq v13, v7, :cond_9

    .line 388
    iget-object v7, v1, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    aget v13, v2, v6

    invoke-virtual {v7, v13}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->getImsResCapability(I)I

    move-result v7

    .line 389
    .local v7, "resCap":I
    const/4 v14, 0x1

    if-eq v7, v14, :cond_9

    const-string v13, "vendor.ril.imsconfig.force.notify"

    .line 390
    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_9

    .line 391
    const-string v13, "setMultiFeatureValues, modify the value in ImsConfig."

    invoke-static {v5, v13}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/16 v16, 0x0

    aput v16, p3, v6

    .line 397
    .end local v7    # "resCap":I
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setMultiFeatureValues, i:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, " feature: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v13, v2, v6

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, " network: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v13, p2, v6

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, " value: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v13, p3, v6

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, " isLast: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v7, v1, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCallOemPlugin:Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    if-nez v7, :cond_a

    .line 402
    iget-object v7, v1, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v7

    iget-object v13, v1, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    .line 403
    invoke-interface {v7, v13}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsCallPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    move-result-object v7

    iput-object v7, v1, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCallOemPlugin:Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    .line 406
    :cond_a
    aget v7, v2, v6

    const/4 v14, 0x1

    if-ne v14, v7, :cond_b

    iget-object v7, v1, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCallOemPlugin:Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    .line 407
    invoke-interface {v7}, Lcom/mediatek/ims/plugin/ImsCallOemPlugin;->isUpdateViwifiFeatureValueAsViLTE()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 408
    iget-object v7, v1, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    iget-object v7, v7, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mController:Lcom/mediatek/ims/config/internal/ImsConfigController;

    aget v13, p3, v6

    const/4 v14, 0x3

    const/4 v9, 0x1

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v9, v13, v15}, Lcom/mediatek/ims/config/internal/ImsConfigController;->setFeatureValue(IIII)V

    .line 415
    :cond_b
    iget-object v7, v1, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    iget-object v7, v7, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mController:Lcom/mediatek/ims/config/internal/ImsConfigController;

    aget v9, v2, v6

    aget v13, p2, v6

    aget v14, p3, v6

    invoke-virtual {v7, v9, v13, v14, v0}, Lcom/mediatek/ims/config/internal/ImsConfigController;->setFeatureValue(IIII)V

    .line 418
    if-eqz v3, :cond_c

    .line 419
    aget v7, v2, v6

    aget v9, p2, v6

    aget v13, p3, v6

    const/4 v14, 0x0

    invoke-interface {v3, v7, v9, v13, v14}, Lcom/android/ims/ImsConfigListener;->onSetFeatureResponse(IIII)V

    .line 430
    .end local v0    # "isLast":I
    :cond_c
    goto :goto_7

    .line 368
    :cond_d
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMultiFeatureValues is not support currently:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v7, v2, v6

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 369
    goto :goto_8

    .line 431
    :catch_0
    move-exception v0

    goto :goto_9

    .line 422
    :catch_1
    move-exception v0

    .line 423
    .local v0, "e":Lcom/android/ims/ImsException;
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMultiFeatureValues ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v9, v2, v6

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ") failed, code: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getCode()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    if-eqz v3, :cond_e

    .line 426
    aget v7, v2, v6

    aget v9, p2, v6

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-interface {v3, v7, v9, v14, v13}, Lcom/android/ims/ImsConfigListener;->onSetFeatureResponse(IIII)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 434
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :cond_e
    :goto_7
    nop

    .line 361
    :goto_8
    add-int/lit8 v6, v6, 0x1

    const/4 v9, 0x5

    const/16 v17, 0x1

    goto/16 :goto_4

    .line 432
    .local v0, "e":Landroid/os/RemoteException;
    :goto_9
    invoke-static {v5, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 436
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v6    # "i":I
    :cond_f
    return-void

    .line 329
    .end local v8    # "lastIndex":I
    :catch_2
    move-exception v0

    goto :goto_b

    .line 317
    :catch_3
    move-exception v0

    .line 318
    .local v0, "e":Lcom/android/ims/ImsException;
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMultiFeatureValues failed, code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    if-eqz v3, :cond_10

    .line 321
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_a
    array-length v7, v2

    if-ge v6, v7, :cond_10

    .line 322
    aget v7, v2, v6

    aget v8, p2, v6

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-interface {v3, v7, v8, v14, v13}, Lcom/android/ims/ImsConfigListener;->onSetFeatureResponse(IIII)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 321
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 327
    .end local v6    # "i":I
    :cond_10
    return-void

    .line 330
    .local v0, "e":Landroid/os/RemoteException;
    :goto_b
    invoke-static {v5, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)I
    .locals 3
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setProvisionedStringValue"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsConfig:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsConfig;->setProvisionedStringValue(ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProvisionedValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") remote failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkImsConfigImpl"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v1, 0x1

    return v1
.end method

.method public setProvisionedValue(II)I
    .locals 3
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 197
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setProvisionedValue"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsConfig:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsConfig;->setProvisionedValue(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProvisionedValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") remote failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkImsConfigImpl"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v1, 0x1

    return v1
.end method

.method public setVideoQuality(ILcom/android/ims/ImsConfigListener;)V
    .locals 0
    .param p1, "quality"    # I
    .param p2, "listener"    # Lcom/android/ims/ImsConfigListener;

    .line 459
    return-void
.end method

.method public setVoltePreference(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 557
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setVoltePreference"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->setVoltePreference(I)V

    .line 562
    return-void
.end method

.method public setWfcMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWfcMode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkImsConfigImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const-string v3, "setWfcMode"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const/4 v0, 0x1

    .line 533
    .local v0, "rilWfcMode":I
    packed-switch p1, :pswitch_data_0

    .line 544
    const-string v2, "setWfcMode mapping error, value is invalid!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 541
    :pswitch_0
    const/4 v0, 0x1

    .line 542
    goto :goto_0

    .line 538
    :pswitch_1
    const/4 v0, 0x2

    .line 539
    goto :goto_0

    .line 535
    :pswitch_2
    const/4 v0, 0x3

    .line 536
    nop

    .line 547
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->sendWfcProfileInfo(I)V

    .line 548
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
