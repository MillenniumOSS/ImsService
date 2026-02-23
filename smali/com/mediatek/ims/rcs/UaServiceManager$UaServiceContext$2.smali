.class Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;
.super Ljava/lang/Object;
.source "UaServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 860
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 863
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmPhoneId(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]onServiceConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->-$$Nest$mlogD(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmRetryCount(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fputmRetryCount(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;I)V

    .line 867
    :cond_0
    if-eqz p2, :cond_3

    .line 868
    :try_start_0
    invoke-static {p2}, Lcom/mediatek/ims/rcsua/service/IUaServiceContainer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IUaServiceContainer;

    move-result-object v0

    .line 869
    .local v0, "container":Lcom/mediatek/ims/rcsua/service/IUaServiceContainer;
    if-eqz v0, :cond_3

    .line 870
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v3}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmPhoneId(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v3

    invoke-interface {v0, v3}, Lcom/mediatek/ims/rcsua/service/IUaServiceContainer;->getService(I)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fputmUaService(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;Lcom/mediatek/ims/rcsua/service/IRcsUaService;)V

    .line 871
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v2, v2, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    iget-boolean v2, v2, Lcom/mediatek/ims/rcs/UaServiceManager;->rcsActivated:Z

    if-eqz v2, :cond_1

    .line 872
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmUaService(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->activate()V

    goto :goto_0

    .line 874
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmUaService(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->deactivate()V

    .line 876
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v3}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmUaService(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v4}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetimsEventCallback(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->registerClient(Lcom/mediatek/ims/rcsua/service/IImsEventCallback;I)Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fputmImsClient(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;Lcom/mediatek/ims/rcsua/service/IRcsUaClient;)V

    .line 877
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmImsClient(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 878
    new-instance v2, Lcom/mediatek/ims/rcsua/service/RcsUaException;

    invoke-direct {v2}, Lcom/mediatek/ims/rcsua/service/RcsUaException;-><init>()V

    .line 879
    .local v2, "ex":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    iget-object v3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v4, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v4}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmImsClient(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v5}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetsipEventCallback(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    move-result-object v5

    invoke-interface {v4, v5, v1, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaClient;->openSipChannel(Lcom/mediatek/ims/rcsua/service/ISipEventCallback;ILcom/mediatek/ims/rcsua/service/RcsUaException;)Lcom/mediatek/ims/rcsua/service/ISipChannel;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fputmSipChannel(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;Lcom/mediatek/ims/rcsua/service/ISipChannel;)V

    .line 881
    .end local v2    # "ex":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmAcsCallbacks(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 882
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmUaService(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetacsEventCallback(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->registerAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 886
    .end local v0    # "container":Lcom/mediatek/ims/rcsua/service/IUaServiceContainer;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 887
    :cond_3
    :goto_1
    nop

    .line 888
    :goto_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 892
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->-$$Nest$mlogD(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 893
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->stopService()V

    .line 894
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->startService()V

    .line 895
    return-void
.end method
