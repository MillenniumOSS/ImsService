.class Lcom/mediatek/ims/feature/MtkMmTelFeature$3;
.super Lcom/mediatek/ims/feature/MtkMmTelFeature$ConfigListener;
.source "MtkMmTelFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/feature/MtkMmTelFeature;->changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/mediatek/ims/feature/MtkMmTelFeature;IILjava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/feature/MtkMmTelFeature;
    .param p2, "capability"    # I
    .param p3, "tech"    # I
    .param p4, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 592
    invoke-direct {p0, p2, p3, p4}, Lcom/mediatek/ims/feature/MtkMmTelFeature$ConfigListener;-><init>(IILjava/util/concurrent/CountDownLatch;)V

    return-void
.end method
