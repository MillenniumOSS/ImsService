.class Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;
.super Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub;
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
.field private final ccFeature:Ljava/lang/String;

.field final synthetic this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;


# direct methods
.method public static synthetic $r8$lambda$-7ggn0cju01oxvN2Ai_i9o8luMU(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;Lcom/mediatek/ims/rcsua/RegistrationInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->lambda$onDeregStarted$7(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;Lcom/mediatek/ims/rcsua/RegistrationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-FmIDrRodg51unISYRYWhO7F_Iw(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->lambda$onReregistered$6(Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4PQo2qBIhK2aSu81-StpfhsDeak(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->lambda$onStatusChanged$1(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5yCcWCkXtCywAxi2Vd4cjRSNuZs(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->lambda$onStatusChanged$2(Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9JfFwPvtj_E-UH5YQp17vU6ATvo(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->lambda$onReregistered$5(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QsMd6z2BcmkzE7vQukFGEooNMYc(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->lambda$onStatusChanged$3(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QzosV7avcMMdAetQqNBr77viBFk(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->lambda$onStatusChanged$0(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$drnAvR43ziX_WDyB1WyJo3RlgLg(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->lambda$onStatusChanged$4(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V

    return-void
.end method

.method constructor <init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)V
    .locals 1
    .param p1, "this$1"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 898
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub;-><init>()V

    .line 998
    const-string v0, "+g.gsma.callcomposer"

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->ccFeature:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$onDeregStarted$7(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;Lcom/mediatek/ims/rcsua/RegistrationInfo;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .param p2, "regInfo"    # Lcom/mediatek/ims/rcsua/RegistrationInfo;

    .line 989
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmPhoneId(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v0

    invoke-virtual {p2}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->getRegMode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->onDeregisterInd(II)V

    return-void
.end method

.method private synthetic lambda$onReregistered$5(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V
    .locals 1
    .param p1, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .param p2, "regMode"    # I

    .line 963
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmPhoneId(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->onReregistered(II)V

    return-void
.end method

.method private synthetic lambda$onReregistered$6(Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;

    .line 977
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmPhoneId(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;->onCallComposerChanged(I)V

    return-void
.end method

.method private synthetic lambda$onStatusChanged$0(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V
    .locals 1
    .param p1, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .param p2, "regMode"    # I

    .line 910
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmPhoneId(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->onRegistering(II)V

    return-void
.end method

.method private synthetic lambda$onStatusChanged$1(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V
    .locals 1
    .param p1, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .param p2, "regMode"    # I

    .line 927
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmPhoneId(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->onRegistered(II)V

    .line 928
    return-void
.end method

.method private synthetic lambda$onStatusChanged$2(Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;

    .line 934
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmCapability(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmCapability(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v0

    const-string v1, "+g.gsma.callcomposer"

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmCcNotified(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmPhoneId(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;->onCallComposerChanged(I)V

    .line 937
    :cond_0
    return-void
.end method

.method private synthetic lambda$onStatusChanged$3(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V
    .locals 1
    .param p1, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .param p2, "regMode"    # I

    .line 944
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmPhoneId(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->onDeregistering(II)V

    return-void
.end method

.method private synthetic lambda$onStatusChanged$4(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V
    .locals 1
    .param p1, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .param p2, "regMode"    # I

    .line 951
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmPhoneId(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->onDeregistered(II)V

    return-void
.end method


# virtual methods
.method public onDeregStarted(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V
    .locals 4
    .param p1, "regInfo"    # Lcom/mediatek/ims/rcsua/RegistrationInfo;

    .line 986
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeregStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->-$$Nest$mlogD(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 987
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmStateCallbacks(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 988
    .local v1, "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v2, v2, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->-$$Nest$fgetcallbackHandler(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v2

    .line 989
    .local v2, "hdlr":Landroid/os/Handler;
    :goto_1
    new-instance v3, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, v1, p1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda7;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;Lcom/mediatek/ims/rcsua/RegistrationInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 990
    .end local v1    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .end local v2    # "hdlr":Landroid/os/Handler;
    goto :goto_0

    .line 991
    :cond_1
    return-void
.end method

.method public onReregistered(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V
    .locals 6
    .param p1, "regInfo"    # Lcom/mediatek/ims/rcsua/RegistrationInfo;

    .line 959
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReregistered:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->-$$Nest$mlogD(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 960
    invoke-virtual {p1}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->getRegMode()I

    move-result v0

    .line 961
    .local v0, "regMode":I
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmStateCallbacks(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 962
    .local v2, "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    invoke-virtual {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v3

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v3, v3, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v3}, Lcom/mediatek/ims/rcs/UaServiceManager;->-$$Nest$fgetcallbackHandler(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v3

    .line 963
    .local v3, "hdlr":Landroid/os/Handler;
    :goto_1
    new-instance v4, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2, v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda0;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 964
    .end local v2    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .end local v3    # "hdlr":Landroid/os/Handler;
    goto :goto_0

    .line 967
    :cond_1
    const/4 v1, 0x0

    .line 969
    .local v1, "newCap":Lcom/mediatek/ims/rcsua/Capability;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmUaService(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 971
    goto :goto_2

    .line 970
    :catch_0
    move-exception v2

    .line 972
    :goto_2
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmCapability(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/rcsua/Capability;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v1, :cond_6

    .line 973
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmCapability(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v2

    const-string v3, "+g.gsma.callcomposer"

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmCapability(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v2

    .line 974
    invoke-virtual {v2, v3}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 975
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmCcCallbacks(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;

    .line 976
    .local v3, "callback":Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;
    invoke-virtual {v3}, Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v4

    goto :goto_4

    :cond_4
    iget-object v4, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v4, v4, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v4}, Lcom/mediatek/ims/rcs/UaServiceManager;->-$$Nest$fgetcallbackHandler(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v4

    .line 977
    .local v4, "hdlr":Landroid/os/Handler;
    :goto_4
    new-instance v5, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v3}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda1;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 978
    .end local v3    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;
    .end local v4    # "hdlr":Landroid/os/Handler;
    goto :goto_3

    .line 980
    :cond_5
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->setCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 982
    :cond_6
    return-void
.end method

.method public onStatusChanged(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V
    .locals 7
    .param p1, "regInfo"    # Lcom/mediatek/ims/rcsua/RegistrationInfo;

    .line 902
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->-$$Nest$mlogD(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 903
    invoke-virtual {p1}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->getRegState()I

    move-result v0

    .line 904
    .local v0, "regState":I
    invoke-virtual {p1}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->getRegMode()I

    move-result v1

    .line 906
    .local v1, "regMode":I
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_b

    .line 942
    :pswitch_0
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmStateCallbacks(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 943
    .local v3, "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    invoke-virtual {v3}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v4

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v4, v4, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v4}, Lcom/mediatek/ims/rcs/UaServiceManager;->-$$Nest$fgetcallbackHandler(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v4

    .line 944
    .local v4, "hdlr":Landroid/os/Handler;
    :goto_1
    new-instance v5, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, v3, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda5;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 945
    .end local v3    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .end local v4    # "hdlr":Landroid/os/Handler;
    goto :goto_0

    .line 946
    :cond_1
    goto/16 :goto_b

    .line 916
    :pswitch_1
    const/4 v2, 0x0

    .line 918
    .local v2, "capabilities":Lcom/mediatek/ims/rcsua/Capability;
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v3}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmUaService(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 920
    goto :goto_2

    .line 919
    :catch_0
    move-exception v3

    .line 922
    :goto_2
    if-eqz v2, :cond_2

    .line 923
    iget-object v3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v3, v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->setCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 924
    :cond_2
    iget-object v3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v3}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmStateCallbacks(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 925
    .local v4, "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    invoke-virtual {v4}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v5

    goto :goto_4

    :cond_3
    iget-object v5, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v5, v5, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v5}, Lcom/mediatek/ims/rcs/UaServiceManager;->-$$Nest$fgetcallbackHandler(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v5

    .line 926
    .local v5, "hdlr":Landroid/os/Handler;
    :goto_4
    new-instance v6, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0, v4, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda3;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 929
    .end local v4    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .end local v5    # "hdlr":Landroid/os/Handler;
    goto :goto_3

    .line 930
    :cond_4
    iget-object v3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v3}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmCcCallbacks(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;

    .line 931
    .local v4, "callback":Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;
    invoke-virtual {v4}, Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v5

    goto :goto_6

    :cond_5
    iget-object v5, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v5, v5, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v5}, Lcom/mediatek/ims/rcs/UaServiceManager;->-$$Nest$fgetcallbackHandler(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v5

    .line 932
    .restart local v5    # "hdlr":Landroid/os/Handler;
    :goto_6
    new-instance v6, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, v4}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda4;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 938
    .end local v4    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;
    .end local v5    # "hdlr":Landroid/os/Handler;
    goto :goto_5

    .line 939
    :cond_6
    goto :goto_b

    .line 908
    .end local v2    # "capabilities":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_2
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmStateCallbacks(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 909
    .restart local v3    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    invoke-virtual {v3}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v4

    goto :goto_8

    :cond_7
    iget-object v4, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v4, v4, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v4}, Lcom/mediatek/ims/rcs/UaServiceManager;->-$$Nest$fgetcallbackHandler(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v4

    .line 910
    .local v4, "hdlr":Landroid/os/Handler;
    :goto_8
    new-instance v5, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v3, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda2;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 911
    .end local v3    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .end local v4    # "hdlr":Landroid/os/Handler;
    goto :goto_7

    .line 912
    :cond_8
    goto :goto_b

    .line 949
    :pswitch_3
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->-$$Nest$fgetmStateCallbacks(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 950
    .restart local v3    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    invoke-virtual {v3}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v4

    goto :goto_a

    :cond_9
    iget-object v4, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v4, v4, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v4}, Lcom/mediatek/ims/rcs/UaServiceManager;->-$$Nest$fgetcallbackHandler(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v4

    .line 951
    .restart local v4    # "hdlr":Landroid/os/Handler;
    :goto_a
    new-instance v5, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0, v3, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda6;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 952
    .end local v3    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .end local v4    # "hdlr":Landroid/os/Handler;
    goto :goto_9

    .line 955
    :cond_a
    :goto_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onVopsIndication(I)V
    .locals 3
    .param p1, "vops"    # I

    .line 995
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVopsIndication:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->-$$Nest$mlogD(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 996
    return-void
.end method
