.class public final Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsARCallServiceImpl;
.super Lcom/newcalllib/arcall/IImsARCall$Stub;
.source "ImsVTProviderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ImsVTProviderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ImsARCallServiceImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V
    .locals 2
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/ImsVTProviderUtil;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 468
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsARCallServiceImpl;->this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-direct {p0}, Lcom/newcalllib/arcall/IImsARCall$Stub;-><init>()V

    .line 469
    const-string v0, "ImsVT Util"

    const-string v1, "ImsARCallServiceImpl init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 474
    return-object p0
.end method

.method public isARAvailable()Z
    .locals 1

    .line 507
    const/4 v0, 0x1

    return v0
.end method

.method public releaseSurface()V
    .locals 3

    .line 511
    const-string v0, "ImsVT Util"

    const-string v1, "releaseSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsARCallServiceImpl;->this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->-$$Nest$fgetmProviderById(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsARCallServiceImpl;->this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->-$$Nest$fgetmProviderById(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 514
    .local v1, "p":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v2, v2, Lcom/mediatek/ims/internal/ImsVTProvider;->mARCallCameraId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 515
    move-object v0, v1

    check-cast v0, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->onUpdateSurfaceForARCall()V

    .line 516
    goto :goto_1

    .line 518
    .end local v1    # "p":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 520
    :cond_1
    :goto_1
    return-void
.end method

.method public setARCallListener(Lcom/newcalllib/arcall/IImsARCallListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/newcalllib/arcall/IImsARCallListener;

    .line 478
    const-string v0, "ImsVT Util"

    const-string v1, "setARCallListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    sput-object p1, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mARCallListener:Lcom/newcalllib/arcall/IImsARCallListener;

    .line 480
    return-void
.end method

.method public startARCall()V
    .locals 3

    .line 483
    const-string v0, "ImsVT Util"

    const-string v1, "startARCall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsARCallServiceImpl;->this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->-$$Nest$fgetmProviderById(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsARCallServiceImpl;->this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->-$$Nest$fgetmProviderById(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 486
    .local v1, "p":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v2, v2, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 487
    move-object v0, v1

    check-cast v0, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->onStartARCall()V

    .line 488
    goto :goto_1

    .line 490
    .end local v1    # "p":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 492
    :cond_1
    :goto_1
    return-void
.end method

.method public stopARCall()V
    .locals 3

    .line 495
    const-string v0, "ImsVT Util"

    const-string v1, "stopARCall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsARCallServiceImpl;->this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->-$$Nest$fgetmProviderById(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsARCallServiceImpl;->this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->-$$Nest$fgetmProviderById(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 498
    .local v1, "p":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v2, v2, Lcom/mediatek/ims/internal/ImsVTProvider;->mARCallCameraId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 499
    move-object v0, v1

    check-cast v0, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->onStopARCall()V

    .line 500
    goto :goto_1

    .line 502
    .end local v1    # "p":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 504
    :cond_1
    :goto_1
    return-void
.end method
