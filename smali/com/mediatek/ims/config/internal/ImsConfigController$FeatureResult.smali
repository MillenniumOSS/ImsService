.class Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
.super Ljava/lang/Object;
.source "ImsConfigController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/internal/ImsConfigController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeatureResult"
.end annotation


# instance fields
.field featureResult:I

.field featureValue:I

.field lockObj:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/config/internal/ImsConfigController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/config/internal/ImsConfigController;Lcom/mediatek/ims/config/internal/ImsConfigController-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigController;)V

    return-void
.end method
