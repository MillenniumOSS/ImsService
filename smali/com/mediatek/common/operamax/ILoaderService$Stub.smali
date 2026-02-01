.class public abstract Lcom/mediatek/common/operamax/ILoaderService$Stub;
.super Landroid/os/Binder;
.source "ILoaderService.java"

# interfaces
.implements Lcom/mediatek/common/operamax/ILoaderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/operamax/ILoaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addDirectedApp:I = 0x8

.field static final TRANSACTION_addDirectedHeaderField:I = 0x12

.field static final TRANSACTION_addDirectedHost:I = 0xd

.field static final TRANSACTION_getCompressLevel:I = 0x18

.field static final TRANSACTION_getDirectedAppList:I = 0xc

.field static final TRANSACTION_getDirectedHeaderFieldList:I = 0x16

.field static final TRANSACTION_getDirectedHostList:I = 0x11

.field static final TRANSACTION_getSavingState:I = 0x4

.field static final TRANSACTION_getTunnelState:I = 0x3

.field static final TRANSACTION_isAppDirected:I = 0xb

.field static final TRANSACTION_isHeaderFieldDirected:I = 0x15

.field static final TRANSACTION_isHostDirected:I = 0x10

.field static final TRANSACTION_launchOperaMAX:I = 0x7

.field static final TRANSACTION_registerStateListener:I = 0x5

.field static final TRANSACTION_removeAllDirectedApps:I = 0xa

.field static final TRANSACTION_removeAllDirectedHeaderFields:I = 0x14

.field static final TRANSACTION_removeAllDirectedHosts:I = 0xf

.field static final TRANSACTION_removeDirectedApp:I = 0x9

.field static final TRANSACTION_removeDirectedHeaderField:I = 0x13

.field static final TRANSACTION_removeDirectedHost:I = 0xe

.field static final TRANSACTION_setCompressLevel:I = 0x17

.field static final TRANSACTION_startSaving:I = 0x1

.field static final TRANSACTION_stopSaving:I = 0x2

.field static final TRANSACTION_unregisterStateListener:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 153
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 154
    const-string v0, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/operamax/ILoaderService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 162
    if-nez p0, :cond_0

    .line 163
    const/4 v0, 0x0

    return-object v0

    .line 165
    :cond_0
    const-string v0, "com.mediatek.common.operamax.ILoaderService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 166
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/operamax/ILoaderService;

    if-eqz v1, :cond_1

    .line 167
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/operamax/ILoaderService;

    return-object v1

    .line 169
    :cond_1
    new-instance v1, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 173
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

    .line 177
    const-string v0, "com.mediatek.common.operamax.ILoaderService"

    .line 178
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 179
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 189
    packed-switch p1, :pswitch_data_1

    .line 388
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 185
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    return v1

    .line 381
    :pswitch_1
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getCompressLevel()I

    move-result v2

    .line 382
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    goto/16 :goto_0

    .line 373
    .end local v2    # "_result":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 374
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {p0, v2}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->setCompressLevel(I)V

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    goto/16 :goto_0

    .line 365
    .end local v2    # "_arg0":I
    :pswitch_3
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDirectedHeaderFieldList()[Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 368
    goto/16 :goto_0

    .line 354
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 357
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 358
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->isHeaderFieldDirected(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 359
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 361
    goto/16 :goto_0

    .line 347
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_5
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->removeAllDirectedHeaderFields()V

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    goto/16 :goto_0

    .line 337
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 339
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 340
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->removeDirectedHeaderField(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    goto/16 :goto_0

    .line 326
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 328
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 329
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 330
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->addDirectedHeaderField(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    goto/16 :goto_0

    .line 318
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDirectedHostList()[Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 321
    goto/16 :goto_0

    .line 309
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    invoke-virtual {p0, v2}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->isHostDirected(Ljava/lang/String;)Z

    move-result v3

    .line 312
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 314
    goto/16 :goto_0

    .line 302
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_a
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->removeAllDirectedHosts()V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    goto/16 :goto_0

    .line 294
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 295
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, v2}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->removeDirectedHost(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    goto/16 :goto_0

    .line 285
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 286
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-virtual {p0, v2}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->addDirectedHost(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    goto/16 :goto_0

    .line 277
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_d
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDirectedAppList()[Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 280
    goto/16 :goto_0

    .line 268
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, v2}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->isAppDirected(Ljava/lang/String;)Z

    move-result v3

    .line 271
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 273
    goto/16 :goto_0

    .line 261
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_f
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->removeAllDirectedApps()V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    goto :goto_0

    .line 253
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 254
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {p0, v2}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->removeDirectedApp(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    goto :goto_0

    .line 244
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 245
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {p0, v2}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->addDirectedApp(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    goto :goto_0

    .line 237
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_12
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->launchOperaMAX()V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    goto :goto_0

    .line 229
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/operamax/ILoaderStateListener;

    move-result-object v2

    .line 230
    .local v2, "_arg0":Lcom/mediatek/common/operamax/ILoaderStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, v2}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->unregisterStateListener(Lcom/mediatek/common/operamax/ILoaderStateListener;)V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    goto :goto_0

    .line 220
    .end local v2    # "_arg0":Lcom/mediatek/common/operamax/ILoaderStateListener;
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/operamax/ILoaderStateListener;

    move-result-object v2

    .line 221
    .restart local v2    # "_arg0":Lcom/mediatek/common/operamax/ILoaderStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, v2}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->registerStateListener(Lcom/mediatek/common/operamax/ILoaderStateListener;)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    goto :goto_0

    .line 212
    .end local v2    # "_arg0":Lcom/mediatek/common/operamax/ILoaderStateListener;
    :pswitch_15
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getSavingState()I

    move-result v2

    .line 213
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    goto :goto_0

    .line 205
    .end local v2    # "_result":I
    :pswitch_16
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getTunnelState()I

    move-result v2

    .line 206
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    goto :goto_0

    .line 199
    .end local v2    # "_result":I
    :pswitch_17
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->stopSaving()V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    goto :goto_0

    .line 193
    :pswitch_18
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->startSaving()V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    nop

    .line 391
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
    .end packed-switch
.end method
