.class Lcom/mediatek/ims/internal/ImsVTProviderUtil$NetworkAvailableCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ImsVTProviderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ImsVTProviderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkAvailableCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 337
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$NetworkAvailableCallback;->this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;Lcom/mediatek/ims/internal/ImsVTProviderUtil-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$NetworkAvailableCallback;-><init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 6
    .param p1, "network"    # Landroid/net/Network;

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkAvailableCallback.onAvailable: network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    if-eqz p1, :cond_3

    .line 343
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$NetworkAvailableCallback;->this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->-$$Nest$fgetmConnectivityManager(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    .line 345
    .local v0, "linkProp":Landroid/net/LinkProperties;
    if-eqz v0, :cond_2

    .line 346
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, "netId":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 349
    const-string v4, "NetworkAvailableCallback.onAvailable: network id is null"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-void

    .line 352
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NetworkAvailableCallback.onAvailable: (network_id, if_name) = ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOnByPlatform()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    invoke-static {v4, v1, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->nUpdateNetworkTable(ZILjava/lang/String;)I

    .line 359
    .end local v2    # "ifName":Ljava/lang/String;
    .end local v3    # "netId":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 360
    :cond_2
    const-string v2, "NetworkAvailableCallback.onAvailable: linkProp = null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    .end local v0    # "linkProp":Landroid/net/LinkProperties;
    :goto_0
    goto :goto_1

    .line 364
    :cond_3
    const-string v0, "NetworkAvailableCallback.onAvailable: network = null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :goto_1
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkAvailableCallback.onLost: network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    if-eqz p1, :cond_2

    .line 373
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "netId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 375
    const-string v2, "NetworkAvailableCallback.onLost: network id is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-void

    .line 379
    :cond_0
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOnByPlatform()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->nUpdateNetworkTable(ZILjava/lang/String;)I

    .line 383
    .end local v0    # "netId":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 384
    :cond_2
    const-string v0, "NetworkAvailableCallback.onLost: network = null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :goto_0
    return-void
.end method
