.class Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;
.super Landroid/os/Handler;
.source "ImsConfigController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/internal/ImsConfigController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHandler"
.end annotation


# instance fields
.field private mPhoneId:I

.field final synthetic this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/config/internal/ImsConfigController;ILandroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/config/internal/ImsConfigController;
    .param p2, "phoneId"    # I
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    .line 199
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 200
    iput p2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->mPhoneId:I

    .line 201
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 205
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_9

    .line 387
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.ims.config.action.CONFIG_LOADED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 389
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone"

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 390
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->-$$Nest$fgetmContext(Lcom/mediatek/ims/config/internal/ImsConfigController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 392
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->-$$Nest$fgetmLogTag(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_IMS_CFG_CONFIG_LOADED phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    goto/16 :goto_9

    .line 368
    :sswitch_1
    goto/16 :goto_9

    .line 371
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 372
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    .line 373
    .local v4, "value":[I
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.intent.action.IMS_FEATURE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "phone_id"

    aget v7, v4, v1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    const-string v6, "item"

    aget v7, v4, v3

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 376
    const-string v6, "value"

    aget v7, v4, v2

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 377
    iget-object v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v6}, Lcom/mediatek/ims/config/internal/ImsConfigController;->-$$Nest$fgetmContext(Lcom/mediatek/ims/config/internal/ImsConfigController;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 379
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->-$$Nest$sfgetDEBUG()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 380
    const-string v6, "ImsConfigController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_IMS_CFG_FEATURE_CHANGED: phoneId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v1, v4, v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " feature ="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v3, v4, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " value="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "value":[I
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_1
    goto/16 :goto_9

    .line 353
    :sswitch_3
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigController;->-$$Nest$minitImsCapabilities(Lcom/mediatek/ims/config/internal/ImsConfigController;)V

    .line 356
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.ims.config.action.DYNAMIC_IMS_SWITCH_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone"

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->-$$Nest$fgetmContext(Lcom/mediatek/ims/config/internal/ImsConfigController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 361
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 362
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->-$$Nest$fgetmLogTag(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DYNAMIC_IMS_SWITCH_COMPLETE phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    goto/16 :goto_9

    .line 314
    :sswitch_4
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigController;->-$$Nest$mresetWfcModeFlag(Lcom/mediatek/ims/config/internal/ImsConfigController;)V

    .line 315
    goto/16 :goto_9

    .line 318
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 319
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;

    .line 322
    .local v4, "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;
    iget-object v5, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->lockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 323
    :try_start_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 324
    iget v1, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->requestConfigNum:I

    new-array v1, v1, [I

    .line 325
    .local v1, "errorResult":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v1

    if-ge v3, v6, :cond_3

    .line 326
    const/4 v6, -0x1

    aput v6, v1, v3

    .line 325
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 329
    .end local v3    # "i":I
    :cond_3
    iput-object v1, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->resultArray:[I

    .line 330
    iput v2, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->configResult:I

    .line 331
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigController;->-$$Nest$fgetmLogTag(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SET_MDCFG_DONE, error ret, e="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    nop

    .end local v1    # "errorResult":[I
    goto :goto_2

    .line 333
    :cond_4
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 335
    .local v1, "resultStr":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, "resultStrArray":[Ljava/lang/String;
    array-length v6, v2

    new-array v6, v6, [I

    .line 337
    .local v6, "resultIntArray":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, v2

    if-ge v7, v8, :cond_5

    .line 338
    aget-object v8, v2, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v7

    .line 337
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 340
    .end local v7    # "i":I
    :cond_5
    iput-object v6, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->resultArray:[I

    .line 342
    iput v3, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->configResult:I

    .line 344
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->-$$Nest$sfgetDEBUG()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 345
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v3}, Lcom/mediatek/ims/config/internal/ImsConfigController;->-$$Nest$fgetmLogTag(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "SET_MDCFG_DONE, finish set MD Ims config!"

    invoke-static {v3, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .end local v1    # "resultStr":Ljava/lang/String;
    .end local v2    # "resultStrArray":[Ljava/lang/String;
    .end local v6    # "resultIntArray":[I
    :cond_6
    :goto_2
    iget-object v1, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 348
    monitor-exit v5

    .line 350
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;
    goto/16 :goto_9

    .line 348
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v4    # "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;
    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 295
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 296
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;

    .line 298
    .local v4, "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    iget-object v5, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 299
    :try_start_1
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_8

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v6, :cond_7

    goto :goto_3

    .line 304
    :cond_7
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 305
    .local v2, "value":[I
    aget v1, v2, v1

    iput v1, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureValue:I

    .line 306
    iput v3, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    goto :goto_4

    .line 300
    .end local v2    # "value":[I
    :cond_8
    :goto_3
    iput v2, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 301
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->-$$Nest$fgetmLogTag(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_IMS_GET_RESOURCE_DONE: error ret null, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_4
    iget-object v1, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 309
    monitor-exit v5

    .line 311
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    goto/16 :goto_9

    .line 309
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v4    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    :catchall_1
    move-exception v1

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 207
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 208
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;

    .line 210
    .restart local v4    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    iget-object v5, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 211
    :try_start_2
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_9

    .line 213
    iput v2, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 214
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->-$$Nest$fgetmLogTag(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_IMS_SET_FEATURE_DONE: error ret null, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 217
    :cond_9
    iput v3, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 219
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 220
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->-$$Nest$fgetmLogTag(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MSG_IMS_SET_FEATURE_DONE: Finish set feature!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_a
    :goto_5
    iget-object v1, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 223
    monitor-exit v5

    .line 225
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    goto/16 :goto_9

    .line 223
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v4    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    :catchall_2
    move-exception v1

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    .line 228
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 229
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;

    .line 231
    .restart local v4    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    iget-object v5, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 232
    :try_start_3
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_b

    .line 233
    iput v2, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 234
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->-$$Nest$fgetmLogTag(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_IMS_GET_FEATURE_DONE: error ret null, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 237
    :cond_b
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 238
    .restart local v2    # "value":[I
    aget v1, v2, v1

    iput v1, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureValue:I

    .line 239
    iput v3, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 241
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 242
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->-$$Nest$fgetmLogTag(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_IMS_GET_FEATURE_DONE: featureValue:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureValue:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .end local v2    # "value":[I
    :cond_c
    :goto_6
    iget-object v1, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 246
    monitor-exit v5

    .line 248
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    goto/16 :goto_9

    .line 246
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v4    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    :catchall_3
    move-exception v1

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v1

    .line 274
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 275
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;

    .line 277
    .local v1, "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    iget-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->lockObj:Ljava/lang/Object;

    monitor-enter v4

    .line 278
    :try_start_4
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_d

    .line 280
    iput v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionResult:I

    .line 281
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigController;->-$$Nest$fgetmLogTag(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_IMS_SET_PROVISION_DONE: error ret null, e="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 284
    :cond_d
    iput v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionResult:I

    .line 286
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 287
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigController;->-$$Nest$fgetmLogTag(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_IMS_SET_PROVISION_DONE: Finish set provision!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_e
    :goto_7
    iget-object v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 290
    monitor-exit v4

    .line 292
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    goto :goto_9

    .line 290
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    :catchall_4
    move-exception v2

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v2

    .line 251
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 252
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;

    .line 254
    .restart local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    iget-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->lockObj:Ljava/lang/Object;

    monitor-enter v4

    .line 255
    :try_start_5
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_f

    .line 256
    iput v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionResult:I

    .line 257
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigController;->-$$Nest$fgetmLogTag(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_IMS_GET_PROVISION_DONE: error ret null, e="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 260
    :cond_f
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionInfo:Ljava/lang/String;

    iput-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 262
    iput v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionResult:I

    .line 264
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 265
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigController;->-$$Nest$fgetmLogTag(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_IMS_GET_PROVISION_DONE: provisionInfo:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionInfo:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_10
    :goto_8
    iget-object v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 269
    monitor-exit v4

    .line 271
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    goto :goto_9

    .line 269
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    :catchall_5
    move-exception v2

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v2

    .line 402
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    :goto_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_a
        0x66 -> :sswitch_9
        0x67 -> :sswitch_8
        0x68 -> :sswitch_7
        0x6a -> :sswitch_6
        0x6b -> :sswitch_5
        0x6c -> :sswitch_4
        0x3e9 -> :sswitch_3
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_1
        0x3ec -> :sswitch_0
    .end sparse-switch
.end method
