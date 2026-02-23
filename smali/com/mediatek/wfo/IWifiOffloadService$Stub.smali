.class public abstract Lcom/mediatek/wfo/IWifiOffloadService$Stub;
.super Landroid/os/Binder;
.source "IWifiOffloadService.java"

# interfaces
.implements Lcom/mediatek/wfo/IWifiOffloadService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/IWifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_factoryReset:I = 0xb

.field static final TRANSACTION_getDisconnectCause:I = 0x4

.field static final TRANSACTION_getMccMncAllowList:I = 0xa

.field static final TRANSACTION_getRatType:I = 0x3

.field static final TRANSACTION_isWifiConnected:I = 0x7

.field static final TRANSACTION_registerForHandoverEvent:I = 0x1

.field static final TRANSACTION_setEpdgFqdn:I = 0x5

.field static final TRANSACTION_setMccMncAllowList:I = 0x9

.field static final TRANSACTION_setWifiOff:I = 0xc

.field static final TRANSACTION_unregisterForHandoverEvent:I = 0x2

.field static final TRANSACTION_updateCallState:I = 0x6

.field static final TRANSACTION_updateRadioState:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 69
    const-string v0, "com.mediatek.wfo.IWifiOffloadService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IWifiOffloadService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 77
    if-nez p0, :cond_0

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    const-string v0, "com.mediatek.wfo.IWifiOffloadService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 81
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/wfo/IWifiOffloadService;

    if-eqz v1, :cond_1

    .line 82
    move-object v1, v0

    check-cast v1, Lcom/mediatek/wfo/IWifiOffloadService;

    return-object v1

    .line 84
    :cond_1
    new-instance v1, Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 88
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    const-string v0, "com.mediatek.wfo.IWifiOffloadService"

    .line 93
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 94
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 97
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v1

    .line 100
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 221
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 214
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->setWifiOff()Z

    move-result v2

    .line 215
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 217
    goto/16 :goto_0

    .line 208
    .end local v2    # "_result":Z
    :pswitch_1
    invoke-virtual {p0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->factoryReset()V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    goto/16 :goto_0

    .line 199
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 200
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getMccMncAllowList(I)[Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 204
    goto/16 :goto_0

    .line 189
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->setMccMncAllowList([Ljava/lang/String;)Z

    move-result v3

    .line 192
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 194
    goto/16 :goto_0

    .line 178
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 180
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 181
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->updateRadioState(II)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    goto/16 :goto_0

    .line 170
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_5
    invoke-virtual {p0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->isWifiConnected()Z

    move-result v2

    .line 171
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 173
    goto/16 :goto_0

    .line 156
    .end local v2    # "_result":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 158
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 160
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 162
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 163
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->updateCallState(IIII)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    goto :goto_0

    .line 143
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 145
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 148
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->setEpdgFqdn(ILjava/lang/String;Z)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    goto :goto_0

    .line 133
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 134
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getDisconnectCause(I)Lcom/mediatek/wfo/DisconnectCause;

    move-result-object v3

    .line 136
    .local v3, "_result":Lcom/mediatek/wfo/DisconnectCause;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 138
    goto :goto_0

    .line 123
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/mediatek/wfo/DisconnectCause;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 124
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getRatType(I)I

    move-result v3

    .line 126
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    goto :goto_0

    .line 114
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/wfo/IWifiOffloadListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IWifiOffloadListener;

    move-result-object v2

    .line 115
    .local v2, "_arg0":Lcom/mediatek/wfo/IWifiOffloadListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->unregisterForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    goto :goto_0

    .line 105
    .end local v2    # "_arg0":Lcom/mediatek/wfo/IWifiOffloadListener;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/wfo/IWifiOffloadListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IWifiOffloadListener;

    move-result-object v2

    .line 106
    .restart local v2    # "_arg0":Lcom/mediatek/wfo/IWifiOffloadListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->registerForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    nop

    .line 224
    .end local v2    # "_arg0":Lcom/mediatek/wfo/IWifiOffloadListener;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
