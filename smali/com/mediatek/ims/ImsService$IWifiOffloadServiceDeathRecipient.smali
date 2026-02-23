.class Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;
.super Ljava/lang/Object;
.source "ImsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IWifiOffloadServiceDeathRecipient"
.end annotation


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/ImsService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsService-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;-><init>(Lcom/mediatek/ims/ImsService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 1903
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$sfputsWifiOffloadService(Lcom/mediatek/wfo/IWifiOffloadService;)V

    .line 1904
    return-void
.end method
