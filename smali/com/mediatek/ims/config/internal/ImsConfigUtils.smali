.class public Lcom/mediatek/ims/config/internal/ImsConfigUtils;
.super Ljava/lang/Object;
.source "ImsConfigUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/config/internal/ImsConfigUtils$MdConfigType;
    }
.end annotation


# static fields
.field private static final ACTION_WIFI_ONLY_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_WIFI_ONLY_MODE"

.field private static final DEBUG:Z

.field private static final EXTRA_WIFI_ONLY_MODE_CHANGED:Ljava/lang/String; = "state"

.field public static final PROPERTY_IMS_SUPPORT:Ljava/lang/String; = "persist.vendor.ims_support"

.field public static final PROPERTY_IMS_VIDEO_ENALBE:Ljava/lang/String; = "persist.vendor.mtk.ims.video.enable"

.field public static final PROPERTY_VILTE_ENALBE:Ljava/lang/String; = "persist.vendor.mtk.vilte.enable"

.field public static final PROPERTY_VIWIFI_ENALBE:Ljava/lang/String; = "persist.vendor.mtk.viwifi.enable"

.field public static final PROPERTY_VOLTE_ENALBE:Ljava/lang/String; = "persist.vendor.mtk.volte.enable"

.field public static final PROPERTY_WFC_ENALBE:Ljava/lang/String; = "persist.vendor.mtk.wfc.enable"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final TAG:Ljava/lang/String; = "ImsConfigUtils"

.field private static final TELDBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 64
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "persist.vendor.log.tel_dbg"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 65
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    sput-boolean v0, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->DEBUG:Z

    .line 66
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    move v2, v3

    :cond_2
    sput-boolean v2, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->TELDBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayToString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "array"    # [Ljava/lang/Object;

    .line 341
    const-string v0, "null"

    if-nez p0, :cond_0

    .line 342
    return-object v0

    .line 344
    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 346
    .local v1, "maxLength":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 347
    return-object v0

    .line 350
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    const/4 v3, 0x0

    .line 353
    .local v3, "i":I
    :goto_0
    aget-object v4, p0, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    if-ne v3, v1, :cond_2

    .line 355
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 357
    :cond_2
    const-string v4, "\",\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static checkIsPhoneIdValid(I)Z
    .locals 4
    .param p0, "phoneId"    # I

    .line 250
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v0

    const-string v1, "ImsConfigUtils"

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz v0, :cond_2

    .line 251
    if-gt p0, v3, :cond_0

    if-gez p0, :cond_3

    .line 252
    :cond_0
    sget-boolean v0, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multi IMS support but phone id invalid, phoneId:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_1
    return v2

    .line 257
    :cond_2
    if-gt p0, v3, :cond_4

    if-gez p0, :cond_3

    goto :goto_0

    .line 263
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 258
    :cond_4
    :goto_0
    sget-boolean v0, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->DEBUG:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mutli IMS not support and phone id invalid, phoneId:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_5
    return v2
.end method

.method public static getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 275
    const-string v0, "carrier_config"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 277
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-static {p2}, Lcom/mediatek/ims/common/SubscriptionManagerHelper;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 278
    .local v1, "subId":I
    sget-boolean v2, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->TELDBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBooleanCarrierConfig: phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsConfigUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    const/4 v2, 0x0

    .line 281
    .local v2, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 284
    :cond_1
    if-eqz v2, :cond_2

    .line 285
    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 288
    :cond_2
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public static getFeaturePropValue(Ljava/lang/String;I)I
    .locals 6
    .param p0, "propName"    # Ljava/lang/String;
    .param p1, "phoneId"    # I

    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, "defaultPropValue":I
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 111
    .local v1, "featureValue":I
    invoke-static {p1}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->checkIsPhoneIdValid(I)Z

    move-result v2

    const-string v3, "ImsConfigUtils"

    if-nez v2, :cond_1

    .line 112
    sget-boolean v2, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multi IMS getFeaturePropValue():"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", phoneId invalid return default value"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    return v0

    .line 116
    :cond_1
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    .line 117
    shl-int v2, v5, p1

    and-int/2addr v2, v1

    if-lez v2, :cond_2

    move v4, v5

    .local v4, "propResult":I
    :cond_2
    goto :goto_0

    .line 120
    .end local v4    # "propResult":I
    :cond_3
    and-int/lit8 v2, v1, 0x1

    if-lez v2, :cond_4

    move v4, v5

    .line 122
    .restart local v4    # "propResult":I
    :cond_4
    :goto_0
    sget-boolean v2, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->DEBUG:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Multi IMS getFeaturePropValue() featureValue:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", propName:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", propResult:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_5
    return v4
.end method

.method public static getIntCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 301
    const-string v0, "carrier_config"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 303
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-static {p2}, Lcom/mediatek/ims/common/SubscriptionManagerHelper;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 304
    .local v1, "subId":I
    sget-boolean v2, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIntCarrierConfig: phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsConfigUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    const/4 v2, 0x0

    .line 307
    .local v2, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 310
    :cond_1
    if-eqz v2, :cond_2

    .line 311
    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 314
    :cond_2
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public static getWfcMode(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 330
    const/4 v0, 0x0

    .line 332
    .local v0, "wfcMode":I
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->getWfcMode()I

    move-result v0

    goto :goto_0

    .line 335
    :cond_0
    invoke-static {p0}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v0

    .line 337
    :goto_0
    return v0
.end method

.method public static isWfcEnabledByUser(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 319
    const/4 v0, 0x0

    .line 321
    .local v0, "wfcSetting":Z
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v0

    goto :goto_0

    .line 324
    :cond_0
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v0

    .line 326
    :goto_0
    return v0
.end method

.method public static sendWifiOnlyModeIntent(Landroid/content/Context;IZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "mode"    # Z

    .line 92
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 94
    return-void

    .line 96
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_WIFI_ONLY_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 100
    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    :cond_1
    sget-boolean v1, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->TELDBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendWifiOnlyModeIntent() intent, mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsConfigUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    return-void
.end method

.method public static triggerSendCfg(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imsRilAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p2, "phoneId"    # I

    .line 131
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 132
    .local v0, "params":[I
    const-string v1, "carrier_allow_turnoff_ims_bool"

    invoke-static {p0, v1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 133
    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 136
    .local v1, "isAllowTurnOff":I
    :goto_0
    const-string v4, "persist.vendor.mtk.volte.enable"

    invoke-static {v4, p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v3

    .line 137
    const-string v4, "persist.vendor.mtk.vilte.enable"

    invoke-static {v4, p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v2

    .line 138
    const-string v4, "persist.vendor.mtk.wfc.enable"

    invoke-static {v4, p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x2

    aput v4, v0, v5

    .line 139
    const-string v4, "persist.vendor.mtk.viwifi.enable"

    invoke-static {v4, p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x3

    aput v4, v0, v6

    .line 140
    const-string v4, "persist.vendor.ims_support"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v7, 0x4

    aput v4, v0, v7

    .line 143
    aget v4, v0, v3

    aget v8, v0, v2

    or-int/2addr v4, v8

    aget v8, v0, v5

    or-int/2addr v4, v8

    aget v8, v0, v6

    or-int/2addr v4, v8

    aget v8, v0, v7

    or-int/2addr v4, v8

    xor-int/lit8 v8, v1, 0x1

    or-int/2addr v4, v8

    const/4 v8, 0x5

    aput v4, v0, v8

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "triggerSendCfg, AT+EIMSCFG="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v3, v0, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v2, v0, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v0, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v0, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v0, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isAllowTurnOff:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsConfigUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v2, 0x0

    invoke-interface {p1, v0, p2, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setImsCfg([IILandroid/os/Message;)V

    .line 149
    return-void
.end method

.method public static triggerSendCfgForDisableIms(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)Z
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imsRilAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p2, "phoneId"    # I

    .line 199
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v3

    .line 200
    .local v3, "imsMgr":Lcom/android/ims/ImsManager;
    invoke-virtual {v3}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v4

    .line 201
    .local v4, "volteCfg":Z
    invoke-virtual {v3}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v5

    .line 202
    .local v5, "volteEnabled":Z
    invoke-virtual {v3}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v6

    .line 203
    .local v6, "wfcCfg":Z
    invoke-virtual {v3}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v7

    .line 204
    .local v7, "wfcEnabled":Z
    const/4 v8, 0x6

    new-array v8, v8, [I

    .line 206
    .local v8, "params":[I
    const-string v9, "persist.vendor.mtk.volte.enable"

    invoke-static {v9, v2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x0

    aput v9, v8, v10

    .line 209
    const-string v9, "ImsConfigUtils"

    if-nez v4, :cond_0

    aget v11, v8, v10

    if-eqz v11, :cond_1

    :cond_0
    if-nez v5, :cond_3

    :cond_1
    if-eqz v6, :cond_2

    if-nez v7, :cond_3

    .line 211
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "triggerSendCfgForDisableIms, volteCfg:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", enable:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v8, v10

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", volteEnabled:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", wfcCfg:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", wfcEnabled:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return v10

    .line 217
    :cond_3
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v11

    .line 218
    .local v11, "simState":I
    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 219
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "triggerSendCfgForDisableIms, simState:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return v10

    .line 223
    :cond_4
    invoke-interface {v1, v12}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getMtkHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v13

    sget-object v14, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_1:Lcom/android/internal/telephony/HalVersion;

    .line 224
    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v13

    const-string v14, "persist.vendor.ims_support"

    const/4 v15, 0x5

    const/16 v16, 0x3

    const/16 v17, 0x2

    const/16 v18, 0x4

    if-eqz v13, :cond_6

    .line 225
    const-string v13, "carrier_allow_turnoff_ims_bool"

    invoke-static {v0, v13, v2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 226
    move v13, v12

    goto :goto_0

    :cond_5
    move v13, v10

    .line 227
    .local v13, "isAllowTurnOff":I
    :goto_0
    aput v10, v8, v10

    .line 228
    aput v10, v8, v12

    .line 229
    aput v10, v8, v17

    .line 230
    aput v10, v8, v16

    .line 231
    invoke-static {v14, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v14

    aput v14, v8, v18

    .line 232
    aget v14, v8, v18

    xor-int/lit8 v19, v13, 0x1

    or-int v14, v14, v19

    aput v14, v8, v15

    .line 233
    .end local v13    # "isAllowTurnOff":I
    goto :goto_1

    .line 234
    :cond_6
    const-string v13, "persist.vendor.mtk.vilte.enable"

    invoke-static {v13, v2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v13

    aput v13, v8, v12

    .line 235
    const-string v13, "persist.vendor.mtk.wfc.enable"

    invoke-static {v13, v2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v13

    aput v13, v8, v17

    .line 236
    const-string v13, "persist.vendor.mtk.viwifi.enable"

    invoke-static {v13, v2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v13

    aput v13, v8, v16

    .line 237
    invoke-static {v14, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    aput v13, v8, v18

    .line 239
    aput v10, v8, v15

    .line 242
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "triggerSendCfgForDisableIms, AT+EIMSCFG="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget v10, v8, v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, ","

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v14, v8, v12

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v14, v8, v17

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v14, v8, v16

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v14, v8, v18

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v13, v8, v15

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, ", phoneId:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v9, 0x0

    invoke-interface {v1, v8, v2, v9}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setImsCfg([IILandroid/os/Message;)V

    .line 246
    return v12
.end method

.method public static triggerSendCfgForVolte(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;II)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imsRilAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p2, "phoneId"    # I
    .param p3, "volteOn"    # I

    .line 153
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 154
    .local v0, "params":[I
    const-string v1, "carrier_allow_turnoff_ims_bool"

    invoke-static {p0, v1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 155
    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 158
    .local v1, "isAllowTurnOff":I
    :goto_0
    aput p3, v0, v3

    .line 159
    const-string v4, "persist.vendor.mtk.vilte.enable"

    invoke-static {v4, p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v2

    .line 160
    const-string v4, "persist.vendor.mtk.wfc.enable"

    invoke-static {v4, p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x2

    aput v4, v0, v5

    .line 161
    const-string v4, "persist.vendor.mtk.viwifi.enable"

    invoke-static {v4, p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x3

    aput v4, v0, v6

    .line 162
    const-string v4, "persist.vendor.ims_support"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v7, 0x4

    aput v4, v0, v7

    .line 165
    aget v4, v0, v3

    aget v8, v0, v2

    or-int/2addr v4, v8

    aget v8, v0, v5

    or-int/2addr v4, v8

    aget v8, v0, v6

    or-int/2addr v4, v8

    aget v8, v0, v7

    or-int/2addr v4, v8

    xor-int/lit8 v8, v1, 0x1

    or-int/2addr v4, v8

    const/4 v8, 0x5

    aput v4, v0, v8

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "triggerSendCfgForVolte, AT+EIMSCFG="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v3, v0, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v2, v0, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v0, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v0, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v0, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isAllowTurnOff:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsConfigUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v2, 0x0

    invoke-interface {p1, v0, p2, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setImsCfg([IILandroid/os/Message;)V

    .line 172
    return-void
.end method

.method public static triggerSendCfgForVowifi(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;III)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imsRilAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p2, "phoneId"    # I
    .param p3, "volteOn"    # I
    .param p4, "vowifiOn"    # I

    .line 176
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 177
    .local v0, "params":[I
    const-string v1, "carrier_allow_turnoff_ims_bool"

    invoke-static {p0, v1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 178
    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 181
    .local v1, "isAllowTurnOff":I
    :goto_0
    aput p3, v0, v3

    .line 182
    const-string v4, "persist.vendor.mtk.vilte.enable"

    invoke-static {v4, p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v2

    .line 183
    const/4 v4, 0x2

    aput p4, v0, v4

    .line 184
    const-string v5, "persist.vendor.mtk.viwifi.enable"

    invoke-static {v5, p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x3

    aput v5, v0, v6

    .line 185
    const-string v5, "persist.vendor.ims_support"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v7, 0x4

    aput v5, v0, v7

    .line 188
    aget v5, v0, v3

    aget v8, v0, v2

    or-int/2addr v5, v8

    aget v8, v0, v4

    or-int/2addr v5, v8

    aget v8, v0, v6

    or-int/2addr v5, v8

    aget v8, v0, v7

    or-int/2addr v5, v8

    xor-int/lit8 v8, v1, 0x1

    or-int/2addr v5, v8

    const/4 v8, 0x5

    aput v5, v0, v8

    .line 190
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "triggerSendCfgForVowifi, AT+EIMSCFG="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v3, v0, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v2, v0, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v0, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v0, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v0, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isAllowTurnOff:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsConfigUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v2, 0x0

    invoke-interface {p1, v0, p2, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setImsCfg([IILandroid/os/Message;)V

    .line 195
    return-void
.end method
