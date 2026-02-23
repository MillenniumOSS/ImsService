.class Lcom/mediatek/wfo/impl/ImsLocationHandler$4;
.super Landroid/content/BroadcastReceiver;
.source "ImsLocationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/ImsLocationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/ImsLocationHandler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1380
    iput-object p1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1383
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1386
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1387
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.action.NETWORK_COUNTRY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1388
    const-string v0, "android.telephony.extra.NETWORK_COUNTRY"

    .line 1389
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1390
    .local v0, "lowerCaseCountryCode":Ljava/lang/String;
    const/16 v1, 0xbbd

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1391
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 1392
    .local v2, "isoCountryCode":Ljava/lang/String;
    const-string v3, "ImsLocationHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_NETWORK_COUNTRY_CHANGED, iso: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-static {v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$misCtaNotAllow(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1394
    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-virtual {v3, v1, v2}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1396
    .end local v2    # "isoCountryCode":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1397
    :cond_2
    const-string v2, "ImsLocationHandler"

    const-string v3, "iso country code is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    const-string v2, "android.telephony.extra.LAST_KNOWN_NETWORK_COUNTRY"

    .line 1400
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1401
    .local v2, "lastKnownCountryCode":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    .line 1402
    invoke-static {v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$mgetAirplaneModeFromSettings(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1403
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 1404
    .local v3, "isoCountryCode":Ljava/lang/String;
    const-string v4, "ImsLocationHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_NETWORK_COUNTRY_CHANGED, iso: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    iget-object v4, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-virtual {v4, v1, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1408
    .end local v0    # "lowerCaseCountryCode":Ljava/lang/String;
    .end local v2    # "lastKnownCountryCode":Ljava/lang/String;
    .end local v3    # "isoCountryCode":Ljava/lang/String;
    :cond_3
    :goto_0
    goto/16 :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1409
    const-string v0, "ImsLocationHandler"

    const-string v1, "LocationManager.MODE_CHANGED_ACTION"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    const/16 v1, 0xbc1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 1411
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1412
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$fgetmLocationManager(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    .line 1413
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 1414
    .local v0, "isNlpEnabled":Z
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-static {v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$fgetmLocationTimeoutLock(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1415
    :try_start_0
    const-string v2, "ImsLocationHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocationManager.PROVIDERS_CHANGED_ACTION isNlpEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", location timeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-static {v4}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$fgetmLocationTimeout(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-static {v2}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$fgetmLocationTimeout(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    .line 1418
    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    const/16 v3, 0xbc5

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1420
    :cond_6
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1422
    .end local v0    # "isNlpEnabled":Z
    :cond_7
    :goto_1
    return-void

    .line 1384
    :cond_8
    :goto_2
    return-void
.end method
