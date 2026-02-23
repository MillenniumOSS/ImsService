.class public abstract Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication$Stub;
.super Landroid/os/Binder;
.source "IMwiRadioIndication.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onLocationRequest:I = 0x1

.field static final TRANSACTION_onNattKeepAliveChanged:I = 0x2

.field static final TRANSACTION_onPdnHandover:I = 0x3

.field static final TRANSACTION_onWfcPdnError:I = 0x4

.field static final TRANSACTION_onWfcPdnStateChanged:I = 0x5

.field static final TRANSACTION_onWifiLock:I = 0x6

.field static final TRANSACTION_onWifiMonitoringThreshouldChanged:I = 0x7

.field static final TRANSACTION_onWifiPdnActivate:I = 0x8

.field static final TRANSACTION_onWifiPdnOOS:I = 0x9

.field static final TRANSACTION_onWifiPingRequest:I = 0xa

.field static final TRANSACTION_onWifiRoveout:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 76
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication$Stub;->markVintfStability()V

    .line 77
    sget-object v0, Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 85
    if-nez p0, :cond_0

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_0
    sget-object v0, Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 89
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication;

    if-eqz v1, :cond_1

    .line 90
    move-object v1, v0

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication;

    return-object v1

    .line 92
    :cond_1
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 96
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    sget-object v0, Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 101
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 102
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 105
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return v2

    .line 108
    :cond_1
    if-ne p1, v1, :cond_2

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    return v2

    .line 113
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return v2

    .line 118
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 232
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 223
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 225
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication$Stub;->onWifiRoveout(I[Ljava/lang/String;)V

    .line 228
    goto/16 :goto_0

    .line 213
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 215
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 216
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication$Stub;->onWifiPingRequest(I[I)V

    .line 218
    goto/16 :goto_0

    .line 203
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 205
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication$Stub;->onWifiPdnOOS(I[Ljava/lang/String;)V

    .line 208
    goto/16 :goto_0

    .line 193
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 195
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 196
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication$Stub;->onWifiPdnActivate(I[I)V

    .line 198
    goto :goto_0

    .line 183
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 185
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 186
    .restart local v3    # "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication$Stub;->onWifiMonitoringThreshouldChanged(I[I)V

    .line 188
    goto :goto_0

    .line 173
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 175
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication$Stub;->onWifiLock(I[Ljava/lang/String;)V

    .line 178
    goto :goto_0

    .line 163
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 165
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 166
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication$Stub;->onWfcPdnStateChanged(I[I)V

    .line 168
    goto :goto_0

    .line 153
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 155
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 156
    .restart local v3    # "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication$Stub;->onWfcPdnError(I[I)V

    .line 158
    goto :goto_0

    .line 143
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 145
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 146
    .restart local v3    # "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication$Stub;->onPdnHandover(I[I)V

    .line 148
    goto :goto_0

    .line 133
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 135
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication$Stub;->onNattKeepAliveChanged(I[Ljava/lang/String;)V

    .line 138
    goto :goto_0

    .line 123
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[Ljava/lang/String;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 125
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 126
    .restart local v3    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication$Stub;->onLocationRequest(I[Ljava/lang/String;)V

    .line 128
    nop

    .line 235
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[Ljava/lang/String;
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
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
