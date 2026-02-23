.class public abstract Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;
.super Ljava/lang/Object;
.source "UaServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcs/UaServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CallComposerCallback"
.end annotation


# instance fields
.field private myHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;->myHandler:Landroid/os/Handler;

    .line 493
    return-void
.end method


# virtual methods
.method getMyHandler()Landroid/os/Handler;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;->myHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onCallComposerChanged(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 496
    return-void
.end method
