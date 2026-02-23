.class Lcom/mediatek/ims/feature/MtkMmTelFeature$1;
.super Ljava/lang/Object;
.source "MtkMmTelFeature.java"

# interfaces
.implements Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/feature/MtkMmTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/feature/MtkMmTelFeature;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/feature/MtkMmTelFeature;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/feature/MtkMmTelFeature;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$1;->this$0:Lcom/mediatek/ims/feature/MtkMmTelFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newImsSmsInd([BLjava/lang/String;)V
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$1;->this$0:Lcom/mediatek/ims/feature/MtkMmTelFeature;

    invoke-virtual {v0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;

    .line 197
    .local v0, "smsImpl":Lcom/mediatek/ims/feature/MtkImsSmsImpl;
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->newImsSmsInd([BLjava/lang/String;)V

    .line 200
    :cond_0
    return-void
.end method

.method public newStatusReportInd([BLjava/lang/String;)V
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$1;->this$0:Lcom/mediatek/ims/feature/MtkMmTelFeature;

    invoke-virtual {v0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;

    .line 189
    .local v0, "smsImpl":Lcom/mediatek/ims/feature/MtkImsSmsImpl;
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->newStatusReportInd([BLjava/lang/String;)V

    .line 192
    :cond_0
    return-void
.end method

.method public notifyCapabilitiesChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .locals 3
    .param p1, "c"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 204
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$1;->this$0:Lcom/mediatek/ims/feature/MtkMmTelFeature;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCapabilitiesStatusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->-$$Nest$mlog(Lcom/mediatek/ims/feature/MtkMmTelFeature;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$1;->this$0:Lcom/mediatek/ims/feature/MtkMmTelFeature;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->onCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    .line 206
    return-void
.end method

.method public notifyContextChanged(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 171
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$1;->this$0:Lcom/mediatek/ims/feature/MtkMmTelFeature;

    invoke-static {v0, p1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->-$$Nest$fputmContext(Lcom/mediatek/ims/feature/MtkMmTelFeature;Landroid/content/Context;)V

    .line 172
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$1;->this$0:Lcom/mediatek/ims/feature/MtkMmTelFeature;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set context to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$1;->this$0:Lcom/mediatek/ims/feature/MtkMmTelFeature;

    invoke-static {v2}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->-$$Nest$fgetmContext(Lcom/mediatek/ims/feature/MtkMmTelFeature;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->-$$Nest$mlog(Lcom/mediatek/ims/feature/MtkMmTelFeature;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public notifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "c"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 210
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$1;->this$0:Lcom/mediatek/ims/feature/MtkMmTelFeature;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyIncomingCall ImsCallSessionImplBase "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extras "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 211
    const-string v2, "MtkMmTelFeature"

    invoke-static {v2, p2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {v0, v1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->-$$Nest$mlog(Lcom/mediatek/ims/feature/MtkMmTelFeature;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$1;->this$0:Lcom/mediatek/ims/feature/MtkMmTelFeature;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->onNotifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V

    .line 213
    return-void
.end method

.method public notifyIncomingCallSession(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "c"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 217
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$1;->this$0:Lcom/mediatek/ims/feature/MtkMmTelFeature;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyIncomingCallSession IImsCallSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extras "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 218
    const-string v2, "MtkMmTelFeature"

    invoke-static {v2, p2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-static {v0, v1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->-$$Nest$mlog(Lcom/mediatek/ims/feature/MtkMmTelFeature;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$1;->this$0:Lcom/mediatek/ims/feature/MtkMmTelFeature;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->onNotifyIncomingCallSession(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V

    .line 220
    return-void
.end method

.method public sendSmsRsp(IIII)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "status"    # I
    .param p4, "reason"    # I

    .line 178
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$1;->this$0:Lcom/mediatek/ims/feature/MtkMmTelFeature;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSmsRsp, token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", messageRef "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->-$$Nest$mlog(Lcom/mediatek/ims/feature/MtkMmTelFeature;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$1;->this$0:Lcom/mediatek/ims/feature/MtkMmTelFeature;

    invoke-virtual {v0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;

    .line 181
    .local v0, "smsImpl":Lcom/mediatek/ims/feature/MtkImsSmsImpl;
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->sendSmsRsp(IIII)V

    .line 184
    :cond_0
    return-void
.end method

.method public updateCapbilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V
    .locals 3
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 224
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$1;->this$0:Lcom/mediatek/ims/feature/MtkMmTelFeature;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCapbilities "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->-$$Nest$mlog(Lcom/mediatek/ims/feature/MtkMmTelFeature;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$1;->this$0:Lcom/mediatek/ims/feature/MtkMmTelFeature;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V

    .line 226
    return-void
.end method
