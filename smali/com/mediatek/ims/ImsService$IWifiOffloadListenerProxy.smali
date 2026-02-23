.class Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;
.super Lcom/mediatek/wfo/WifiOffloadManager$Listener;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IWifiOffloadListenerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsService;


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

    .line 1806
    iput-object p1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-direct {p0}, Lcom/mediatek/wfo/WifiOffloadManager$Listener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsService-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;-><init>(Lcom/mediatek/ims/ImsService;)V

    return-void
.end method


# virtual methods
.method public onHandover(III)V
    .locals 6
    .param p1, "simIdx"    # I
    .param p2, "stage"    # I
    .param p3, "ratType"    # I

    .line 1810
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHandover simIdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", stage="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", ratType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mImsRegInfo[simIdx]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    aget v4, v4, p1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 1811
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    iget-object v4, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    aget v4, v4, p1

    if-nez v4, :cond_1

    .line 1814
    iget-object v4, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmWfcHandoverToLteState(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    aget v4, v4, p1

    if-ne v4, v0, :cond_0

    .line 1815
    iget-object v4, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmWfcHandoverToLteState(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    aput v1, v4, p1

    .line 1817
    :cond_0
    iget-object v4, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mImsExtInfo[simIdx]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsExtInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v3

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 1821
    :cond_1
    if-eq p2, v0, :cond_2

    if-nez p2, :cond_3

    :cond_2
    if-ne p3, v1, :cond_3

    .line 1824
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmWfcHandoverToLteState(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v1

    aput v0, v1, p1

    .line 1826
    :cond_3
    return-void
.end method

.method public onRequestImsSwitch(IZ)V
    .locals 0
    .param p1, "simIdx"    # I
    .param p2, "isImsOn"    # Z

    .line 1842
    return-void
.end method

.method public onWfcStateChanged(II)V
    .locals 4
    .param p1, "simIdx"    # I
    .param p2, "state"    # I

    .line 1830
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWfcStateChanged simIdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 1831
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmWfcPdnState(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    aput v1, v0, p1

    .line 1834
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmNotifyUseEireg(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v0

    aget-boolean v0, v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0, p1}, Lcom/mediatek/ims/ImsService;->-$$Nest$mcheckVoWiFiDeregisterStatus(Lcom/mediatek/ims/ImsService;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0, p1}, Lcom/mediatek/ims/ImsService;->-$$Nest$mgetWfcUserSettings(Lcom/mediatek/ims/ImsService;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1835
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmHandler(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v0

    aget-object v0, v0, p1

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1836
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmHandler(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v1

    aget-object v1, v1, p1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1838
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public onWifiPdnOOSStateChanged(II)V
    .locals 3
    .param p1, "simId"    # I
    .param p2, "oosState"    # I

    .line 1846
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWifiPdnOOSStateChanged simIdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oosState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 1847
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0, p1, p2}, Lcom/mediatek/ims/ImsService;->-$$Nest$mnotifyRegistrationOOSStateChanged(Lcom/mediatek/ims/ImsService;II)V

    .line 1848
    return-void
.end method
