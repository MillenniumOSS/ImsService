.class public Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication$Default;
.super Ljava/lang/Object;
.source "IMwiRadioIndication.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 62
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public onLocationRequest(I[Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "indStgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public onNattKeepAliveChanged(I[Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "indStgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public onPdnHandover(I[I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "indStgs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public onWfcPdnError(I[I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "indStgs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public onWfcPdnStateChanged(I[I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "indStgs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public onWifiLock(I[Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "indStgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public onWifiMonitoringThreshouldChanged(I[I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "indStgs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public onWifiPdnActivate(I[I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "indStgs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public onWifiPdnOOS(I[Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "indStgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public onWifiPingRequest(I[I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "indStgs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public onWifiRoveout(I[Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "indStgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method
