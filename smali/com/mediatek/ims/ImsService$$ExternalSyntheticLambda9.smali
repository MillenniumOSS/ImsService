.class public final synthetic Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/ims/ImsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/AsyncResult;


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/ims/ImsService;ILandroid/os/AsyncResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda9;->f$0:Lcom/mediatek/ims/ImsService;

    iput p2, p0, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda9;->f$1:I

    iput-object p3, p0, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda9;->f$2:Landroid/os/AsyncResult;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda9;->f$0:Lcom/mediatek/ims/ImsService;

    iget v1, p0, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda9;->f$1:I

    iget-object v2, p0, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda9;->f$2:Landroid/os/AsyncResult;

    check-cast p1, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;

    invoke-static {v0, v1, v2, p1}, Lcom/mediatek/ims/ImsService;->$r8$lambda$daSsRpxEFBIzXg9rfG0mQSGAUPc(Lcom/mediatek/ims/ImsService;ILandroid/os/AsyncResult;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;)V

    return-void
.end method
