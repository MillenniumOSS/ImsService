.class Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;
.super Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub;
.source "UaServiceManager.java"


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
.method public static synthetic $r8$lambda$35rN6PHmwd9UgZO_wVAzSRL5b6E(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;->lambda$onConfigErrorReceived$2(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hM4g4UJU2BGREFs6bhsDAchu1Xo(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;->lambda$onConfigChanged$0(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$tL2fA0QFHCDUpC5EbwCmM8xIZEo(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;->lambda$onConnectionChanged$1(Z)V

    return-void
.end method

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

    .line 1046
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$onConfigChanged$0(ZI)V
    .locals 3
    .param p1, "valid"    # Z
    .param p2, "version"    # I

    .line 1051
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmAcsCallbacks(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;

    .line 1052
    .local v1, "callback":Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmPhoneId(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;->onConfigurationStatusChanged(IZI)V

    .line 1053
    .end local v1    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;
    goto :goto_0

    .line 1054
    :cond_0
    return-void
.end method

.method private synthetic lambda$onConfigErrorReceived$2(ILjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "errorString"    # Ljava/lang/String;

    .line 1074
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmAcsCallbacks(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;

    .line 1075
    .local v1, "callback":Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmPhoneId(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;->onConfigurationErrorReceived(IILjava/lang/String;)V

    .line 1076
    .end local v1    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;
    goto :goto_0

    .line 1077
    :cond_0
    return-void
.end method

.method private synthetic lambda$onConnectionChanged$1(Z)V
    .locals 3
    .param p1, "status"    # Z

    .line 1061
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmAcsCallbacks(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;

    .line 1062
    .local v1, "callback":Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;
    if-eqz p1, :cond_0

    .line 1063
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmPhoneId(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;->onAcsConnected(I)V

    goto :goto_1

    .line 1065
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmPhoneId(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;->onAcsDisconnected(I)V

    .line 1066
    .end local v1    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;
    :goto_1
    goto :goto_0

    .line 1067
    :cond_1
    return-void
.end method


# virtual methods
.method public onConfigChanged(ZI)V
    .locals 3
    .param p1, "valid"    # Z
    .param p2, "version"    # I

    .line 1049
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmPhoneId(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]onConfigChanged:valid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->-$$Nest$mlogD(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 1050
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->-$$Nest$fgetcallbackHandler(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5$$ExternalSyntheticLambda1;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1055
    return-void
.end method

.method public onConfigErrorReceived(ILjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "errorString"    # Ljava/lang/String;

    .line 1072
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmPhoneId(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]onConfigErrorReceived errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->-$$Nest$mlogD(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 1073
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->-$$Nest$fgetcallbackHandler(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5$$ExternalSyntheticLambda0;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1078
    return-void
.end method

.method public onConnectionChanged(Z)V
    .locals 3
    .param p1, "status"    # Z

    .line 1059
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmPhoneId(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]onConnectionChanged:status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->-$$Nest$mlogD(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 1060
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->-$$Nest$fgetcallbackHandler(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5$$ExternalSyntheticLambda2;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1068
    return-void
.end method
