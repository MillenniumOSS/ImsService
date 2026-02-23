.class public abstract Lcom/mediatek/wfo/IWifiOffloadListener$Stub;
.super Landroid/os/Binder;
.source "IWifiOffloadListener.java"

# interfaces
.implements Lcom/mediatek/wfo/IWifiOffloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/IWifiOffloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfo/IWifiOffloadListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onAllowWifiOff:I = 0x5

.field static final TRANSACTION_onHandover:I = 0x1

.field static final TRANSACTION_onRequestImsSwitch:I = 0x3

.field static final TRANSACTION_onRoveOut:I = 0x2

.field static final TRANSACTION_onWfcStateChanged:I = 0x6

.field static final TRANSACTION_onWifiPdnOOSStateChanged:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "com.mediatek.wfo.IWifiOffloadListener"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/wfo/IWifiOffloadListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IWifiOffloadListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 53
    if-nez p0, :cond_0

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_0
    const-string v0, "com.mediatek.wfo.IWifiOffloadListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/wfo/IWifiOffloadListener;

    if-eqz v1, :cond_1

    .line 58
    move-object v1, v0

    check-cast v1, Lcom/mediatek/wfo/IWifiOffloadListener;

    return-object v1

    .line 60
    :cond_1
    new-instance v1, Lcom/mediatek/wfo/IWifiOffloadListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/wfo/IWifiOffloadListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 64
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    const-string v0, "com.mediatek.wfo.IWifiOffloadListener"

    .line 69
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 70
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 73
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return v1

    .line 76
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 130
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 132
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 133
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/wfo/IWifiOffloadListener$Stub;->onWfcStateChanged(II)V

    .line 135
    goto :goto_0

    .line 124
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1
    invoke-virtual {p0}, Lcom/mediatek/wfo/IWifiOffloadListener$Stub;->onAllowWifiOff()V

    .line 125
    goto :goto_0

    .line 115
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 117
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 118
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/wfo/IWifiOffloadListener$Stub;->onWifiPdnOOSStateChanged(II)V

    .line 120
    goto :goto_0

    .line 105
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 107
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 108
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 109
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/wfo/IWifiOffloadListener$Stub;->onRequestImsSwitch(IZ)V

    .line 110
    goto :goto_0

    .line 93
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 95
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 97
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 98
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 99
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/wfo/IWifiOffloadListener$Stub;->onRoveOut(IZI)V

    .line 100
    goto :goto_0

    .line 81
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 83
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 85
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 86
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 87
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/wfo/IWifiOffloadListener$Stub;->onHandover(III)V

    .line 88
    nop

    .line 142
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
