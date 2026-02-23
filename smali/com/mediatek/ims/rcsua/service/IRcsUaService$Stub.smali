.class public abstract Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;
.super Landroid/os/Binder;
.source "IRcsUaService.java"

# interfaces
.implements Lcom/mediatek/ims/rcsua/service/IRcsUaService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/service/IRcsUaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_activate:I = 0x1

.field static final TRANSACTION_addCapability:I = 0x6

.field static final TRANSACTION_clearAcsConfiguration:I = 0x1a

.field static final TRANSACTION_deactivate:I = 0x2

.field static final TRANSACTION_getAcsConfigInt:I = 0x12

.field static final TRANSACTION_getAcsConfigString:I = 0x13

.field static final TRANSACTION_getAcsConfiguration:I = 0x11

.field static final TRANSACTION_getAcsSwitchState:I = 0x18

.field static final TRANSACTION_getCapabilities:I = 0xd

.field static final TRANSACTION_getOptions:I = 0xc

.field static final TRANSACTION_isAcsConnected:I = 0x14

.field static final TRANSACTION_isActivated:I = 0xe

.field static final TRANSACTION_registerAcsCallback:I = 0xf

.field static final TRANSACTION_registerClient:I = 0x9

.field static final TRANSACTION_removeCapability:I = 0x7

.field static final TRANSACTION_setAcsProvisioningAddress:I = 0x19

.field static final TRANSACTION_setAcsSideLoadingConfiguration:I = 0x1b

.field static final TRANSACTION_setAcsSwitchState:I = 0x16

.field static final TRANSACTION_setOptions:I = 0xb

.field static final TRANSACTION_setRcsClientConfiguration:I = 0x17

.field static final TRANSACTION_triggerAcsRequest:I = 0x15

.field static final TRANSACTION_triggerForceReregistration:I = 0x4

.field static final TRANSACTION_triggerReregistration:I = 0x3

.field static final TRANSACTION_triggerRestoration:I = 0x5

.field static final TRANSACTION_unregisterAcsCallback:I = 0x10

.field static final TRANSACTION_unregisterClient:I = 0xa

.field static final TRANSACTION_updateCapabilities:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 120
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 121
    const-string v0, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 129
    if-nez p0, :cond_0

    .line 130
    const/4 v0, 0x0

    return-object v0

    .line 132
    :cond_0
    const-string v0, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 133
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_1

    .line 134
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    return-object v1

    .line 136
    :cond_1
    new-instance v1, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 140
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

    .line 144
    const-string v0, "com.mediatek.ims.rcsua.service.IRcsUaService"

    .line 145
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 146
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 149
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    return v1

    .line 152
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 367
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 359
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->setAcsSideLoadingConfiguration(Ljava/lang/String;)Z

    move-result v3

    .line 361
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    goto/16 :goto_1

    .line 351
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_1
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->clearAcsConfiguration()Z

    move-result v2

    .line 352
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    goto/16 :goto_1

    .line 343
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->setAcsProvisioningAddress(Ljava/lang/String;)Z

    move-result v3

    .line 345
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    goto/16 :goto_1

    .line 335
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_3
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getAcsSwitchState()Z

    move-result v2

    .line 336
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    goto/16 :goto_1

    .line 328
    .end local v2    # "_result":Z
    :pswitch_4
    sget-object v2, Landroid/telephony/ims/RcsClientConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsClientConfiguration;

    .line 329
    .local v2, "_arg0":Landroid/telephony/ims/RcsClientConfiguration;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V

    .line 330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    goto/16 :goto_1

    .line 319
    .end local v2    # "_arg0":Landroid/telephony/ims/RcsClientConfiguration;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 320
    .local v2, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->setAcsSwitchState(Z)Z

    move-result v3

    .line 321
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    goto/16 :goto_1

    .line 311
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 312
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->triggerAcsRequest(I)V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    goto/16 :goto_1

    .line 303
    .end local v2    # "_arg0":I
    :pswitch_7
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->isAcsConnected()Z

    move-result v2

    .line 304
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    goto/16 :goto_1

    .line 295
    .end local v2    # "_result":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    goto/16 :goto_1

    .line 286
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 287
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getAcsConfigInt(Ljava/lang/String;)I

    move-result v3

    .line 288
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    goto/16 :goto_1

    .line 278
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_a
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;

    move-result-object v2

    .line 279
    .local v2, "_result":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-static {p3, v2, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 281
    goto/16 :goto_1

    .line 271
    .end local v2    # "_result":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    move-result-object v2

    .line 272
    .local v2, "_arg0":Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->unregisterAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    goto/16 :goto_1

    .line 263
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    move-result-object v2

    .line 264
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->registerAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    goto/16 :goto_1

    .line 255
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    :pswitch_d
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->isActivated()Z

    move-result v2

    .line 256
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    goto/16 :goto_1

    .line 248
    .end local v2    # "_result":Z
    :pswitch_e
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v2

    .line 249
    .local v2, "_result":Lcom/mediatek/ims/rcsua/Capability;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-static {p3, v2, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 251
    goto/16 :goto_1

    .line 241
    .end local v2    # "_result":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_f
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getOptions()Landroid/os/Bundle;

    move-result-object v2

    .line 242
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-static {p3, v2, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 244
    goto/16 :goto_1

    .line 234
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_10
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 235
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->setOptions(Landroid/os/Bundle;)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    goto/16 :goto_1

    .line 226
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    move-result-object v2

    .line 227
    .local v2, "_arg0":Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->unregisterClient(Lcom/mediatek/ims/rcsua/service/IRcsUaClient;)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    goto/16 :goto_1

    .line 215
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    move-result-object v2

    .line 217
    .local v2, "_arg0":Lcom/mediatek/ims/rcsua/service/IImsEventCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 218
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->registerClient(Lcom/mediatek/ims/rcsua/service/IImsEventCallback;I)Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    move-result-object v4

    .line 219
    .local v4, "_result":Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 221
    goto :goto_1

    .line 207
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/service/IImsEventCallback;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    :pswitch_13
    sget-object v2, Lcom/mediatek/ims/rcsua/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/Capability;

    .line 208
    .local v2, "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    goto :goto_1

    .line 199
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_14
    sget-object v2, Lcom/mediatek/ims/rcsua/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/Capability;

    .line 200
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->removeCapability(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    goto :goto_1

    .line 191
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_15
    sget-object v2, Lcom/mediatek/ims/rcsua/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/Capability;

    .line 192
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->addCapability(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    goto :goto_1

    .line 184
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_16
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->triggerRestoration()V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    goto :goto_1

    .line 177
    :pswitch_17
    sget-object v2, Lcom/mediatek/ims/rcsua/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/Capability;

    .line 178
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->triggerForceReregistration(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    goto :goto_1

    .line 169
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_18
    sget-object v2, Lcom/mediatek/ims/rcsua/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/Capability;

    .line 170
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->triggerReregistration(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    goto :goto_1

    .line 162
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_19
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->deactivate()V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    goto :goto_1

    .line 156
    :pswitch_1a
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->activate()V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    nop

    .line 370
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
