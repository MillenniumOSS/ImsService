.class public Lcom/mediatek/ims/MtkDynamicImsService$CallComposerEventCallback;
.super Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;
.source "MtkDynamicImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/MtkDynamicImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallComposerEventCallback"
.end annotation


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

    .line 454
    invoke-direct {p0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;-><init>(Landroid/os/Handler;)V

    .line 455
    return-void
.end method


# virtual methods
.method public onCallComposerChanged(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 459
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v0

    .line 460
    .local v0, "srv":Lcom/mediatek/ims/ImsService;
    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->notifyCcCapabilityChange(I)V

    .line 464
    :cond_0
    return-void
.end method
