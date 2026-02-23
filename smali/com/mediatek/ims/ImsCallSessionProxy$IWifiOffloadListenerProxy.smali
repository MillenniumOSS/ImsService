.class Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;
.super Lcom/mediatek/wfo/WifiOffloadManager$Listener;
.source "ImsCallSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsCallSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IWifiOffloadListenerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsCallSessionProxy;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 4017
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-direct {p0}, Lcom/mediatek/wfo/WifiOffloadManager$Listener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ImsCallSessionProxy-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;-><init>(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    return-void
.end method


# virtual methods
.method public onHandover(III)V
    .locals 6
    .param p1, "simIdx"    # I
    .param p2, "stage"    # I
    .param p3, "ratType"    # I

    .line 4020
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->-$$Nest$fgetmPhoneId(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 4021
    return-void

    .line 4024
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->-$$Nest$fgetmRatType(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    if-eq p3, v0, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    goto :goto_1

    .line 4028
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->-$$Nest$fgetmRatType(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->-$$Nest$mgetRadioTechFromRatType(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    move-result v0

    .line 4029
    .local v0, "srcRadioTech":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1, p3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-$$Nest$mgetRadioTechFromRatType(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    move-result v1

    .line 4030
    .local v1, "targetRadioTech":I
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2, p3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-$$Nest$fputmRatType(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 4031
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-$$Nest$fgetmListener(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4032
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHandover(): ratType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->-$$Nest$fgetmRatType(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->-$$Nest$mlogWithCallId(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 4034
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-$$Nest$fgetmListener(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-$$Nest$fgetmCallProfile(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 4035
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-$$Nest$fgetmListener(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v2, v0, v1, v3}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4038
    goto :goto_0

    .line 4036
    :catch_0
    move-exception v2

    .line 4037
    .local v2, "e":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v4, "RuntimeException callSessionHandover()"

    const/4 v5, 0x5

    invoke-static {v3, v4, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->-$$Nest$mlogWithCallId(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 4040
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :goto_0
    return-void

    .line 4025
    .end local v0    # "srcRadioTech":I
    .end local v1    # "targetRadioTech":I
    :cond_3
    :goto_1
    return-void
.end method

.method public onRequestImsSwitch(IZ)V
    .locals 0
    .param p1, "simIdx"    # I
    .param p2, "isImsOn"    # Z

    .line 4046
    return-void
.end method
