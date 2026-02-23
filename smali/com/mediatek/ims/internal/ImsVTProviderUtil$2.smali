.class Lcom/mediatek/ims/internal/ImsVTProviderUtil$2;
.super Landroid/os/Handler;
.source "ImsVTProviderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/internal/ImsVTProviderUtil;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/ImsVTProviderUtil;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 638
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$2;->this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 641
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 717
    :pswitch_0
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProvider;->nTriggerGetOperatorId()I

    .line 718
    goto/16 :goto_0

    .line 708
    :pswitch_1
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOnByPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    const-string v0, "ImsVT Util"

    const-string v1, "reInitRefVTP, ViLTE on, do natvie ReInit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProvider;->nInitRefVTP()I

    .line 711
    const/16 v0, 0x3e9

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->nTagSocketWithUid(I)I

    .line 712
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$2;->this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->reRegisterNetworkCallback()V

    goto/16 :goto_0

    .line 697
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 699
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/ims/internal/ImsVTProvider;

    .line 701
    .local v1, "vtp":Lcom/mediatek/ims/internal/ImsVTProvider;
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$2;->this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->resetWrapperInternal(Lcom/mediatek/ims/internal/ImsVTProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    .end local v1    # "vtp":Lcom/mediatek/ims/internal/ImsVTProvider;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 704
    nop

    .line 705
    goto/16 :goto_0

    .line 703
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 704
    throw v1

    .line 685
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 687
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 688
    .local v1, "phoneId":I
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 690
    .local v2, "isRoaming":Z
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$2;->this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v3, v1, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->switchRoamingInternal(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 692
    .end local v1    # "phoneId":I
    .end local v2    # "isRoaming":Z
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 693
    nop

    .line 694
    goto/16 :goto_0

    .line 692
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 693
    throw v1

    .line 672
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 674
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 675
    .restart local v1    # "phoneId":I
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 676
    .local v2, "feature":I
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 678
    .local v3, "isOn":Z
    iget-object v4, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$2;->this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v4, v1, v2, v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->switchFeatureInternal(IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 680
    .end local v1    # "phoneId":I
    .end local v2    # "feature":I
    .end local v3    # "isOn":Z
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 681
    nop

    .line 682
    goto :goto_0

    .line 680
    :catchall_2
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 681
    throw v1

    .line 660
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 662
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/ims/internal/ImsVTProvider;

    .line 663
    .local v1, "vtp":Lcom/mediatek/ims/internal/ImsVTProvider;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 665
    .local v2, "mode":I
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$2;->this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v3, v1, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->setUIModeInternal(Lcom/mediatek/ims/internal/ImsVTProvider;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 667
    .end local v1    # "vtp":Lcom/mediatek/ims/internal/ImsVTProvider;
    .end local v2    # "mode":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 668
    nop

    .line 669
    goto :goto_0

    .line 667
    :catchall_3
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 668
    throw v1

    .line 647
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 649
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_4
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/ims/internal/ImsVTProvider;

    .line 650
    .restart local v1    # "vtp":Lcom/mediatek/ims/internal/ImsVTProvider;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 651
    .local v2, "cid":I
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 652
    .local v3, "pid":I
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 653
    .local v4, "isMO":Z
    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$2;->this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->bindInternal(Lcom/mediatek/ims/internal/ImsVTProvider;IIZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 655
    .end local v1    # "vtp":Lcom/mediatek/ims/internal/ImsVTProvider;
    .end local v2    # "cid":I
    .end local v3    # "pid":I
    .end local v4    # "isMO":Z
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 656
    nop

    .line 657
    goto :goto_0

    .line 655
    :catchall_4
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 656
    throw v1

    .line 643
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_7
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$2;->this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->setContextAndInitRefVTPInternal(Landroid/content/Context;)V

    .line 644
    nop

    .line 722
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
