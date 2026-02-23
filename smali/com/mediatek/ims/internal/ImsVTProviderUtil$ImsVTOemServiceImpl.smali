.class public final Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTOemServiceImpl;
.super Lcom/mediatek/ims/imsvt/IImsVTOem$Stub;
.source "ImsVTProviderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ImsVTProviderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ImsVTOemServiceImpl"
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

    .line 528
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTOemServiceImpl;->this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-direct {p0}, Lcom/mediatek/ims/imsvt/IImsVTOem$Stub;-><init>()V

    .line 529
    const-string v0, "ImsVT Util"

    const-string v1, "ImsVTOemServiceImpl init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 534
    return-object p0
.end method

.method public setFps(I)V
    .locals 3
    .param p1, "fps"    # I

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    if-gez p1, :cond_0

    .line 540
    const-string v0, "invalid fps, ignore."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTOemServiceImpl;->this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->-$$Nest$fgetmProviderById(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTOemServiceImpl;->this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

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

    .line 544
    .local v1, "p":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v2, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSetOemFps(I)V

    .line 545
    .end local v1    # "p":Ljava/lang/Object;
    goto :goto_0

    .line 547
    :cond_1
    return-void
.end method
