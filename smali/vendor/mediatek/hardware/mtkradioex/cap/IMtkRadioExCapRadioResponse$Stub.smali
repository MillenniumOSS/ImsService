.class public abstract Lvendor/mediatek/hardware/mtkradioex/cap/IMtkRadioExCapRadioResponse$Stub;
.super Landroid/os/Binder;
.source "IMtkRadioExCapRadioResponse.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/cap/IMtkRadioExCapRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/cap/IMtkRadioExCapRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/mediatek/hardware/mtkradioex/cap/IMtkRadioExCapRadioResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_abortCertificateResponse:I = 0x1

.field static final TRANSACTION_enableCapabilityResponse:I = 0x2

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_routeAuthMessageResponse:I = 0x3

.field static final TRANSACTION_routeCertificateResponse:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/cap/IMtkRadioExCapRadioResponse$Stub;->markVintfStability()V

    .line 56
    sget-object v0, Lvendor/mediatek/hardware/mtkradioex/cap/IMtkRadioExCapRadioResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/mediatek/hardware/mtkradioex/cap/IMtkRadioExCapRadioResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/cap/IMtkRadioExCapRadioResponse;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 64
    if-nez p0, :cond_0

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_0
    sget-object v0, Lvendor/mediatek/hardware/mtkradioex/cap/IMtkRadioExCapRadioResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/mediatek/hardware/mtkradioex/cap/IMtkRadioExCapRadioResponse;

    if-eqz v1, :cond_1

    .line 69
    move-object v1, v0

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/cap/IMtkRadioExCapRadioResponse;

    return-object v1

    .line 71
    :cond_1
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/cap/IMtkRadioExCapRadioResponse$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/mediatek/hardware/mtkradioex/cap/IMtkRadioExCapRadioResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 75
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

    .line 79
    sget-object v0, Lvendor/mediatek/hardware/mtkradioex/cap/IMtkRadioExCapRadioResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 80
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 81
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 84
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    return v2

    .line 87
    :cond_1
    if-ne p1, v1, :cond_2

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/cap/IMtkRadioExCapRadioResponse$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return v2

    .line 92
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/cap/IMtkRadioExCapRadioResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v2

    .line 97
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 130
    :pswitch_0
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 132
    .local v1, "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 134
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 135
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, v1, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/cap/IMtkRadioExCapRadioResponse$Stub;->routeCertificateResponse(Landroid/hardware/radio/RadioResponseInfo;[BI)V

    .line 137
    goto :goto_0

    .line 118
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":I
    :pswitch_1
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 120
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 122
    .restart local v3    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 123
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, v1, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/cap/IMtkRadioExCapRadioResponse$Stub;->routeAuthMessageResponse(Landroid/hardware/radio/RadioResponseInfo;[BI)V

    .line 125
    goto :goto_0

    .line 110
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":I
    :pswitch_2
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 111
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/cap/IMtkRadioExCapRadioResponse$Stub;->enableCapabilityResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 113
    goto :goto_0

    .line 102
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_3
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 103
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 104
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/cap/IMtkRadioExCapRadioResponse$Stub;->abortCertificateResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 105
    nop

    .line 144
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
