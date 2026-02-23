.class Lcom/mediatek/ims/ImsApp$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsApp;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ImsApp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsApp;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/mediatek/ims/ImsApp$1;->this$0:Lcom/mediatek/ims/ImsApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 108
    const-string v0, "android.telephony.extra.ACTIVE_SIM_SUPPORTED_COUNT"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 111
    .local v0, "activeModemCount":I
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "processName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyMultiSimConfigChanged, ACTION_MULTI_SIM_CONFIG_CHANGED, phone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ImsApp$1;->this$0:Lcom/mediatek/ims/ImsApp;

    invoke-static {v3}, Lcom/mediatek/ims/ImsApp;->-$$Nest$fgetmNumOfPhones(Lcom/mediatek/ims/ImsApp;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsApp"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/mediatek/ims/ImsApp$1;->this$0:Lcom/mediatek/ims/ImsApp;

    invoke-static {v2}, Lcom/mediatek/ims/ImsApp;->-$$Nest$fgetmNumOfPhones(Lcom/mediatek/ims/ImsApp;)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 126
    iget-object v2, p0, Lcom/mediatek/ims/ImsApp$1;->this$0:Lcom/mediatek/ims/ImsApp;

    invoke-static {v2}, Lcom/mediatek/ims/ImsApp;->-$$Nest$fgetmImsService(Lcom/mediatek/ims/ImsApp;)Lcom/mediatek/ims/ImsService;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/mediatek/ims/ImsService;->notifyMultiSimConfigChanged(Landroid/content/Context;I)V

    .line 127
    iget-object v2, p0, Lcom/mediatek/ims/ImsApp$1;->this$0:Lcom/mediatek/ims/ImsApp;

    invoke-static {v2, v0}, Lcom/mediatek/ims/ImsApp;->-$$Nest$fputmNumOfPhones(Lcom/mediatek/ims/ImsApp;I)V

    .line 130
    :cond_0
    return-void
.end method
