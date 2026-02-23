.class final Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
.super Ljava/lang/Object;
.source "UaServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcs/UaServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UaServiceContext"
.end annotation


# instance fields
.field private final acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

.field private final imsEventCallback:Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

.field private mAcsCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCapability:Lcom/mediatek/ims/rcsua/Capability;

.field private mCcCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCcNotified:Z

.field private mImsClient:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

.field private mPhoneId:I

.field private mRetryCount:I

.field private mSipCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSipChannel:Lcom/mediatek/ims/rcsua/service/ISipChannel;

.field private mStateCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

.field private mUpdateRcsFeatureTagState:Z

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private final sipEventCallback:Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

.field final synthetic this$0:Lcom/mediatek/ims/rcs/UaServiceManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetacsEventCallback(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetimsEventCallback(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/service/IImsEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->imsEventCallback:Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAcsCallbacks(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCapability(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/Capability;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCapability:Lcom/mediatek/ims/rcsua/Capability;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCcCallbacks(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCcCallbacks:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCcNotified(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCcNotified:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsClient(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mImsClient:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I
    .locals 0

    iget p0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRetryCount(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I
    .locals 0

    iget p0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mRetryCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSipCallbacks(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipCallbacks:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateCallbacks(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mStateCallbacks:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUaService(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetserviceConnection(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->serviceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsipEventCallback(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/service/ISipEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->sipEventCallback:Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmImsClient(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;Lcom/mediatek/ims/rcsua/service/IRcsUaClient;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mImsClient:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRetryCount(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;I)V
    .locals 0

    iput p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mRetryCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSipChannel(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;Lcom/mediatek/ims/rcsua/service/ISipChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipChannel:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUaService(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;Lcom/mediatek/ims/rcsua/service/IRcsUaService;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    return-void
.end method

.method constructor <init>(Lcom/mediatek/ims/rcs/UaServiceManager;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/ims/rcs/UaServiceManager;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 521
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 860
    new-instance v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->serviceConnection:Landroid/content/ServiceConnection;

    .line 898
    new-instance v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->imsEventCallback:Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    .line 1001
    new-instance v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->sipEventCallback:Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    .line 1046
    new-instance v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    .line 1085
    new-instance v0, Lcom/mediatek/ims/rcsua/Capability;

    invoke-direct {v0}, Lcom/mediatek/ims/rcsua/Capability;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCapability:Lcom/mediatek/ims/rcsua/Capability;

    .line 1086
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mStateCallbacks:Ljava/util/Set;

    .line 1087
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipCallbacks:Ljava/util/Set;

    .line 1088
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCcCallbacks:Ljava/util/Set;

    .line 1089
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    .line 1092
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mRetryCount:I

    .line 522
    iput p2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mPhoneId:I

    .line 523
    return-void
.end method


# virtual methods
.method activate()V
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_0

    .line 700
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->activate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    goto :goto_0

    .line 701
    :catch_0
    move-exception v0

    .line 704
    :cond_0
    :goto_0
    return-void
.end method

.method addAcsCallback(Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;

    .line 666
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 668
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_1

    .line 670
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->registerAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 671
    :catch_0
    move-exception v0

    .line 672
    :goto_0
    goto :goto_1

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 677
    :cond_1
    :goto_1
    return-void
.end method

.method addCallComposerCallback(Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;)V
    .locals 1
    .param p1, "ccCallback"    # Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;

    .line 654
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCcCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 655
    return-void
.end method

.method addCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 1
    .param p1, "capabilities"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 716
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_0

    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->addCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    goto :goto_0

    .line 719
    :catch_0
    move-exception v0

    .line 722
    :cond_0
    :goto_0
    return-void
.end method

.method addSipCallback(Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;)V
    .locals 1
    .param p1, "sipCallback"    # Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;

    .line 638
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 639
    return-void
.end method

.method addStateCallback(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V
    .locals 1
    .param p1, "stateCallback"    # Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 622
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mStateCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 623
    return-void
.end method

.method clearAcsCallbacks()V
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 691
    return-void
.end method

.method clearCallComposerCallbacks()V
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCcCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 663
    return-void
.end method

.method clearSipCallbacks()V
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 647
    return-void
.end method

.method clearStateCallbacks()V
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mStateCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 631
    return-void
.end method

.method deactivate()V
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_0

    .line 709
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->deactivate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    goto :goto_0

    .line 710
    :catch_0
    move-exception v0

    .line 713
    :cond_0
    :goto_0
    return-void
.end method

.method public getAcsConfigInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "config"    # Ljava/lang/String;

    .line 799
    const/4 v0, 0x0

    .line 800
    .local v0, "result":I
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_0

    .line 802
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfigInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 804
    goto :goto_0

    .line 803
    :catch_0
    move-exception v1

    .line 806
    :cond_0
    :goto_0
    return v0
.end method

.method public getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "config"    # Ljava/lang/String;

    .line 810
    const/4 v0, 0x0

    .line 811
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_0

    .line 813
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 815
    goto :goto_0

    .line 814
    :catch_0
    move-exception v1

    .line 817
    :cond_0
    :goto_0
    return-object v0
.end method

.method public getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;
    .locals 2

    .line 788
    const/4 v0, 0x0

    .line 789
    .local v0, "configuration":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_0

    .line 791
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 793
    goto :goto_0

    .line 792
    :catch_0
    move-exception v1

    .line 795
    :cond_0
    :goto_0
    return-object v0
.end method

.method getCallComposerCallbacks()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;",
            ">;"
        }
    .end annotation

    .line 650
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCcCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method public getCapabilities()Lcom/mediatek/ims/rcsua/Capability;
    .locals 2

    .line 833
    const/4 v0, 0x0

    .line 835
    .local v0, "capability":Lcom/mediatek/ims/rcsua/Capability;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_0

    .line 837
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 839
    goto :goto_0

    .line 838
    :catch_0
    move-exception v1

    .line 841
    :cond_0
    :goto_0
    return-object v0
.end method

.method getCapability()Lcom/mediatek/ims/rcsua/Capability;
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCapability:Lcom/mediatek/ims/rcsua/Capability;

    return-object v0
.end method

.method getImsClient()Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mImsClient:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    return-object v0
.end method

.method getPhoneId()I
    .locals 1

    .line 694
    iget v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mPhoneId:I

    return v0
.end method

.method getSipCallbacks()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;",
            ">;"
        }
    .end annotation

    .line 634
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method getSipChannel()Lcom/mediatek/ims/rcsua/service/ISipChannel;
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipChannel:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    return-object v0
.end method

.method getStateCallbacks()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;",
            ">;"
        }
    .end annotation

    .line 618
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mStateCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method getUaService()Lcom/mediatek/ims/rcsua/service/IRcsUaService;
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    return-object v0
.end method

.method getUpdateRcsFeatureTagState()Z
    .locals 1

    .line 845
    iget-boolean v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUpdateRcsFeatureTagState:Z

    return v0
.end method

.method public isActivated()Z
    .locals 2

    .line 821
    const/4 v0, 0x0

    .line 823
    .local v0, "activated":Z
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_0

    .line 825
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->isActivated()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 827
    goto :goto_0

    .line 826
    :catch_0
    move-exception v1

    .line 829
    :cond_0
    :goto_0
    return v0
.end method

.method isCcNotified()Z
    .locals 1

    .line 853
    iget-boolean v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCcNotified:Z

    return v0
.end method

.method removeAcsCallback(Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;

    .line 680
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 681
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 683
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->unregisterAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    goto :goto_0

    .line 684
    :catch_0
    move-exception v0

    .line 687
    :cond_0
    :goto_0
    return-void
.end method

.method removeCallComposerCallback(Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;)V
    .locals 1
    .param p1, "ccCallback"    # Lcom/mediatek/ims/rcs/UaServiceManager$CallComposerCallback;

    .line 658
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCcCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 659
    return-void
.end method

.method public removeCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 1
    .param p1, "capabilities"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 725
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_0

    .line 727
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->removeCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    goto :goto_0

    .line 728
    :catch_0
    move-exception v0

    .line 731
    :cond_0
    :goto_0
    return-void
.end method

.method removeSipCallback(Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;)V
    .locals 1
    .param p1, "sipCallback"    # Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;

    .line 642
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 643
    return-void
.end method

.method removeStateCallback(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V
    .locals 1
    .param p1, "stateCallback"    # Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 626
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mStateCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 627
    return-void
.end method

.method public sendSipMessage(Landroid/telephony/ims/SipMessage;)Z
    .locals 4
    .param p1, "message"    # Landroid/telephony/ims/SipMessage;

    .line 752
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipChannel:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    if-eqz v0, :cond_1

    .line 753
    const/4 v0, 0x0

    .line 755
    .local v0, "available":Z
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipChannel:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/ISipChannel;->isAvailable()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 757
    goto :goto_0

    .line 756
    :catch_0
    move-exception v1

    .line 758
    :goto_0
    if-eqz v0, :cond_0

    .line 760
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipChannel:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->toEncodedMessage()[B

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/rcsua/service/ISipChannel;->sendMessageAsync([BLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 762
    goto :goto_1

    .line 761
    :catch_1
    move-exception v1

    .line 764
    :cond_0
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 766
    .end local v0    # "available":Z
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method setCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 0
    .param p1, "capabilities"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 614
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCapability:Lcom/mediatek/ims/rcsua/Capability;

    .line 615
    return-void
.end method

.method setCcNotified(Z)V
    .locals 0
    .param p1, "ccNotified"    # Z

    .line 857
    iput-boolean p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCcNotified:Z

    .line 858
    return-void
.end method

.method setImsClient(Lcom/mediatek/ims/rcsua/service/IRcsUaClient;)V
    .locals 0
    .param p1, "imsClient"    # Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    .line 598
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mImsClient:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    .line 599
    return-void
.end method

.method public setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V
    .locals 1
    .param p1, "rcc"    # Landroid/telephony/ims/RcsClientConfiguration;

    .line 770
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_0

    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    goto :goto_0

    .line 773
    :catch_0
    move-exception v0

    .line 776
    :cond_0
    :goto_0
    return-void
.end method

.method setSipChannel(Lcom/mediatek/ims/rcsua/service/ISipChannel;)V
    .locals 0
    .param p1, "sipChannel"    # Lcom/mediatek/ims/rcsua/service/ISipChannel;

    .line 606
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipChannel:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    .line 607
    return-void
.end method

.method setUaService(Lcom/mediatek/ims/rcsua/service/IRcsUaService;)V
    .locals 0
    .param p1, "uaService"    # Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 590
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 591
    return-void
.end method

.method setUpdateRcsFeatureTagState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .line 849
    iput-boolean p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUpdateRcsFeatureTagState:Z

    .line 850
    return-void
.end method

.method startService()V
    .locals 4

    .line 526
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.ims.rcsua.BIND_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 527
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone_id"

    iget v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 529
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 530
    .local v1, "options":Landroid/os/Bundle;
    const-string v2, "OPTION_ROI_SUPPORT"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 531
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    iget-boolean v2, v2, Lcom/mediatek/ims/rcs/UaServiceManager;->acsSupported:Z

    const-string v3, "OPTION_ACS_SUPPORT"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 532
    const-string v2, "service_options"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 534
    const-string v2, "com.mediatek.ims.rcsua.service"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->-$$Nest$fgetmContext(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 537
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->-$$Nest$fgetcallbackHandler(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;

    invoke-direct {v3, p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 549
    return-void
.end method

.method stopService()V
    .locals 3

    .line 552
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_3

    .line 553
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipChannel:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 554
    new-instance v0, Lcom/mediatek/ims/rcsua/service/RcsUaException;

    invoke-direct {v0}, Lcom/mediatek/ims/rcsua/service/RcsUaException;-><init>()V

    .line 556
    .local v0, "ex":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipChannel:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    invoke-interface {v2, v0}, Lcom/mediatek/ims/rcsua/service/ISipChannel;->close(Lcom/mediatek/ims/rcsua/service/RcsUaException;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    goto :goto_0

    .line 557
    :catch_0
    move-exception v2

    .line 559
    :goto_0
    iput-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipChannel:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    .line 561
    .end local v0    # "ex":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->clearSipCallbacks()V

    .line 562
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mImsClient:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    if-eqz v0, :cond_1

    .line 564
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mImsClient:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->unregisterClient(Lcom/mediatek/ims/rcsua/service/IRcsUaClient;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 566
    goto :goto_1

    .line 565
    :catch_1
    move-exception v0

    .line 567
    :goto_1
    iput-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mImsClient:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    .line 569
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->clearStateCallbacks()V

    .line 570
    invoke-virtual {p0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->clearCallComposerCallbacks()V

    .line 572
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 574
    :try_start_2
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->unregisterAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 576
    goto :goto_2

    .line 575
    :catch_2
    move-exception v0

    .line 577
    :goto_2
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 580
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->-$$Nest$fgetmContext(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 581
    iput-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 583
    :cond_3
    return-void
.end method

.method public triggerAcsRequest(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 779
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_0

    .line 781
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerAcsRequest(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    goto :goto_0

    .line 782
    :catch_0
    move-exception v0

    .line 785
    :cond_0
    :goto_0
    return-void
.end method

.method public triggerRestoration()V
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_0

    .line 745
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerRestoration()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    goto :goto_0

    .line 746
    :catch_0
    move-exception v0

    .line 749
    :cond_0
    :goto_0
    return-void
.end method

.method public updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 1
    .param p1, "capabilities"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 734
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_0

    .line 736
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    goto :goto_0

    .line 737
    :catch_0
    move-exception v0

    .line 740
    :cond_0
    :goto_0
    return-void
.end method
