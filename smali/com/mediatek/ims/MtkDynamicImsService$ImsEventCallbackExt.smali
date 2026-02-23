.class public Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;
.super Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
.source "MtkDynamicImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/MtkDynamicImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImsEventCallbackExt"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/MtkDynamicImsService;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/MtkDynamicImsService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/MtkDynamicImsService;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 393
    iput-object p1, p0, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;->this$0:Lcom/mediatek/ims/MtkDynamicImsService;

    .line 394
    invoke-direct {p0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;-><init>(Landroid/os/Handler;)V

    .line 395
    return-void
.end method

.method static synthetic lambda$onDeregistered$1(ILcom/mediatek/ims/ImsService;)V
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "srv"    # Lcom/mediatek/ims/ImsService;

    .line 438
    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;-><init>(I)V

    invoke-virtual {p1, p0, v0}, Lcom/mediatek/ims/ImsService;->notifyRcsCapabilityChanged(ILandroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    .line 440
    const-string v0, "MtkDynamicImsService"

    const-string v1, "remove uce capability"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$onRegistered$0(ILcom/mediatek/ims/ImsService;)V
    .locals 3
    .param p0, "phoneId"    # I
    .param p1, "srv"    # Lcom/mediatek/ims/ImsService;

    .line 418
    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;-><init>(I)V

    .line 419
    .local v0, "capabilities":Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->addCapabilities(I)V

    .line 420
    invoke-virtual {p1, p0, v0}, Lcom/mediatek/ims/ImsService;->notifyRcsCapabilityChanged(ILandroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add uce capability - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkDynamicImsService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onDeregistered(II)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .line 428
    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v0

    .line 429
    .local v0, "uaMgr":Lcom/mediatek/ims/rcs/UaServiceManager;
    if-eqz v0, :cond_1

    .line 430
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    .line 431
    invoke-static {v2}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v1

    .line 432
    .local v1, "srv":Lcom/mediatek/ims/ImsService;
    if-eqz v1, :cond_0

    .line 433
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Lcom/mediatek/ims/ImsService;->updateRoiRegistration(IZ[Ljava/lang/String;)V

    .line 437
    .end local v1    # "srv":Lcom/mediatek/ims/ImsService;
    :cond_0
    invoke-static {v2}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 443
    :cond_1
    return-void
.end method

.method public onRegistered(II)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .line 399
    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v0

    .line 400
    .local v0, "uaMgr":Lcom/mediatek/ims/rcs/UaServiceManager;
    if-eqz v0, :cond_3

    .line 401
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 402
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->getUpdateRcsFeatureTagState(I)Z

    move-result v3

    .line 403
    .local v3, "state":Z
    if-nez v3, :cond_0

    .line 404
    iget-object v4, p0, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;->this$0:Lcom/mediatek/ims/MtkDynamicImsService;

    invoke-static {v4, p1}, Lcom/mediatek/ims/MtkDynamicImsService;->-$$Nest$mupdateRcsFeatureTag(Lcom/mediatek/ims/MtkDynamicImsService;I)V

    .line 406
    .end local v3    # "state":Z
    :cond_0
    goto :goto_0

    .line 407
    :cond_1
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->imsRegistered(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 408
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->readConfiguraion(I)Lcom/mediatek/ims/rcsua/Configuration;

    move-result-object v3

    .line 409
    .local v3, "config":Lcom/mediatek/ims/rcsua/Configuration;
    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v4

    .line 410
    .local v4, "srv":Lcom/mediatek/ims/ImsService;
    if-eqz v4, :cond_2

    .line 411
    invoke-virtual {v3}, Lcom/mediatek/ims/rcsua/Configuration;->getPAssociatedUri()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v2, v5}, Lcom/mediatek/ims/ImsService;->updateRoiRegistration(IZ[Ljava/lang/String;)V

    .line 416
    .end local v3    # "config":Lcom/mediatek/ims/rcsua/Configuration;
    .end local v4    # "srv":Lcom/mediatek/ims/ImsService;
    :cond_2
    :goto_0
    const-string v3, "persist.vendor.mtk_uce_support"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 417
    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 424
    :cond_3
    return-void
.end method

.method public onReregistered(II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .line 447
    iget-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;->this$0:Lcom/mediatek/ims/MtkDynamicImsService;

    invoke-static {v0, p1}, Lcom/mediatek/ims/MtkDynamicImsService;->-$$Nest$mupdateRcsFeatureTag(Lcom/mediatek/ims/MtkDynamicImsService;I)V

    .line 448
    return-void
.end method
