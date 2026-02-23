.class public final Landroidx/print/PrintHelper;
.super Ljava/lang/Object;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/print/PrintHelper$OnPrintFinishCallback;,
        Landroidx/print/PrintHelper$PrintBitmapAdapter;,
        Landroidx/print/PrintHelper$PrintUriAdapter;,
        Landroidx/print/PrintHelper$Api23Impl;,
        Landroidx/print/PrintHelper$Api26Impl;
    }
.end annotation


# static fields
.field public static final COLOR_MODE_COLOR:I = 0x2

.field public static final COLOR_MODE_MONOCHROME:I = 0x1

.field static final IS_MIN_MARGINS_HANDLING_CORRECT:Z

.field private static final LOG_TAG:Ljava/lang/String; = "PrintHelper"

.field private static final MAX_PRINT_SIZE:I = 0xdac

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x2

.field static final PRINT_ACTIVITY_RESPECTS_ORIENTATION:Z

.field public static final SCALE_MODE_FILL:I = 0x2

.field public static final SCALE_MODE_FIT:I = 0x1


# instance fields
.field mColorMode:I

.field final mContext:Landroid/content/Context;

.field mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

.field final mLock:Ljava/lang/Object;

.field mOrientation:I

.field mScaleMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/print/PrintHelper;->PRINT_ACTIVITY_RESPECTS_ORIENTATION:Z

    .line 79
    sput-boolean v0, Landroidx/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 141
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/print/PrintHelper;->mLock:Ljava/lang/Object;

    .line 144
    const/4 v0, 0x2

    iput v0, p0, Landroidx/print/PrintHelper;->mScaleMode:I

    .line 145
    iput v0, p0, Landroidx/print/PrintHelper;->mColorMode:I

    .line 146
    const/4 v0, 0x1

    iput v0, p0, Landroidx/print/PrintHelper;->mOrientation:I

    .line 164
    iput-object p1, p0, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    .line 165
    return-void
.end method

.method static convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "original"    # Landroid/graphics/Bitmap;
    .param p1, "colorMode"    # I

    .line 817
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 818
    return-object p0

    .line 821
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 823
    .local v0, "grayscale":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 824
    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 825
    .local v2, "p":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 826
    .local v3, "cm":Landroid/graphics/ColorMatrix;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 827
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 828
    .local v5, "f":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 829
    invoke-virtual {v1, p0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 830
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 832
    return-object v0
.end method

.method private static copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;
    .locals 2
    .param p0, "other"    # Landroid/print/PrintAttributes;

    .line 554
    new-instance v0, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v0}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 555
    .local v0, "b":Landroid/print/PrintAttributes$Builder;
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    .line 556
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setResolution(Landroid/print/PrintAttributes$Resolution;)Landroid/print/PrintAttributes$Builder;

    .line 557
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    .line 560
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    .line 564
    :cond_0
    nop

    .line 565
    invoke-static {p0}, Landroidx/print/PrintHelper$Api23Impl;->getDuplexMode(Landroid/print/PrintAttributes;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 566
    invoke-static {p0}, Landroidx/print/PrintHelper$Api23Impl;->getDuplexMode(Landroid/print/PrintAttributes;)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/print/PrintHelper$Api23Impl;->setDuplexMode(Landroid/print/PrintAttributes$Builder;I)V

    .line 570
    :cond_1
    return-object v0
.end method

.method static getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .locals 6
    .param p0, "imageWidth"    # I
    .param p1, "imageHeight"    # I
    .param p2, "content"    # Landroid/graphics/RectF;
    .param p3, "fittingMode"    # I

    .line 586
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 589
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    int-to-float v2, p0

    div-float/2addr v1, v2

    .line 590
    .local v1, "scale":F
    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    .line 591
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    int-to-float v3, p1

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_0

    .line 593
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    int-to-float v3, p1

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 595
    :goto_0
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 598
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v3, p0

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 600
    .local v2, "translateX":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    int-to-float v5, p1

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    div-float/2addr v4, v3

    .line 602
    .local v4, "translateY":F
    invoke-virtual {v0, v2, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 603
    return-object v0
.end method

.method static isPortrait(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 543
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "o"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 797
    const-string v0, "close fail "

    const-string v1, "PrintHelper"

    if-eqz p1, :cond_2

    iget-object v2, p0, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 800
    const/4 v2, 0x0

    .line 802
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    move-object v2, v3

    .line 803
    const/4 v3, 0x0

    invoke-static {v2, v3, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    if-eqz v2, :cond_0

    .line 807
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 810
    goto :goto_0

    .line 808
    :catch_0
    move-exception v4

    .line 809
    .local v4, "t":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 803
    .end local v4    # "t":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-object v3

    .line 805
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 807
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 810
    goto :goto_1

    .line 808
    :catch_1
    move-exception v4

    .line 809
    .restart local v4    # "t":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 812
    .end local v4    # "t":Ljava/io/IOException;
    :cond_1
    :goto_1
    throw v3

    .line 798
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad argument to loadBitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static systemSupportsPrint()Z
    .locals 1

    .line 155
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getColorMode()I
    .locals 1

    .line 211
    iget v0, p0, Landroidx/print/PrintHelper;->mColorMode:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 233
    iget v0, p0, Landroidx/print/PrintHelper;->mOrientation:I

    if-nez v0, :cond_0

    .line 234
    const/4 v0, 0x1

    return v0

    .line 236
    :cond_0
    iget v0, p0, Landroidx/print/PrintHelper;->mOrientation:I

    return v0
.end method

.method public getScaleMode()I
    .locals 1

    .line 188
    iget v0, p0, Landroidx/print/PrintHelper;->mScaleMode:I

    return v0
.end method

.method loadConstrainedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 744
    if-eqz p1, :cond_5

    iget-object v0, p0, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    .line 748
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 749
    .local v0, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 750
    invoke-direct {p0, p1, v0}, Landroidx/print/PrintHelper;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 752
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 753
    .local v2, "w":I
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 756
    .local v3, "h":I
    const/4 v4, 0x0

    if-lez v2, :cond_4

    if-gtz v3, :cond_0

    goto :goto_2

    .line 761
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 763
    .local v5, "imageSide":I
    const/4 v6, 0x1

    .line 764
    .local v6, "sampleSize":I
    :goto_0
    const/16 v7, 0xdac

    if-le v5, v7, :cond_1

    .line 765
    ushr-int/lit8 v5, v5, 0x1

    .line 766
    shl-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 770
    :cond_1
    if-lez v6, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    div-int/2addr v7, v6

    if-gtz v7, :cond_2

    goto :goto_1

    .line 774
    :cond_2
    iget-object v7, p0, Landroidx/print/PrintHelper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 775
    :try_start_0
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v8, p0, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 776
    iget-object v8, p0, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v1, v8, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 777
    iget-object v1, p0, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iput v6, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 778
    nop

    .line 779
    iget-object v1, p0, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v8, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v8}, Landroidx/print/PrintHelper$Api26Impl;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v8

    iput-object v8, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 781
    iget-object v1, p0, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 782
    .local v1, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 784
    :try_start_1
    invoke-direct {p0, p1, v1}, Landroidx/print/PrintHelper;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 786
    iget-object v8, p0, Landroidx/print/PrintHelper;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 787
    :try_start_2
    iput-object v4, p0, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 788
    monitor-exit v8

    .line 784
    return-object v7

    .line 788
    :catchall_0
    move-exception v4

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 786
    :catchall_1
    move-exception v7

    iget-object v8, p0, Landroidx/print/PrintHelper;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 787
    :try_start_3
    iput-object v4, p0, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 788
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 789
    throw v7

    .line 788
    :catchall_2
    move-exception v4

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v4

    .line 782
    .end local v1    # "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    :catchall_3
    move-exception v1

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v1

    .line 771
    :cond_3
    :goto_1
    return-object v4

    .line 757
    .end local v5    # "imageSide":I
    .end local v6    # "sampleSize":I
    :cond_4
    :goto_2
    return-object v4

    .line 745
    .end local v0    # "opt":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "w":I
    .end local v3    # "h":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad argument to getScaledBitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 247
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/print/PrintHelper;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroidx/print/PrintHelper$OnPrintFinishCallback;)V

    .line 248
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroidx/print/PrintHelper$OnPrintFinishCallback;)V
    .locals 9
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "callback"    # Landroidx/print/PrintHelper$OnPrintFinishCallback;

    .line 259
    if-nez p2, :cond_0

    .line 260
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    .line 264
    const-string v1, "print"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    .line 266
    .local v0, "printManager":Landroid/print/PrintManager;
    new-instance v1, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v1}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 267
    .local v1, "builder":Landroid/print/PrintAttributes$Builder;
    iget v2, p0, Landroidx/print/PrintHelper;->mColorMode:I

    invoke-virtual {v1, v2}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    .line 268
    invoke-static {p2}, Landroidx/print/PrintHelper;->isPortrait(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    sget-object v2, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v1, v2}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    goto :goto_0

    .line 271
    :cond_1
    sget-object v2, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v1, v2}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    .line 274
    :goto_0
    new-instance v3, Landroidx/print/PrintHelper$PrintBitmapAdapter;

    iget v6, p0, Landroidx/print/PrintHelper;->mScaleMode:I

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, p3

    .end local p1    # "jobName":Ljava/lang/String;
    .end local p2    # "bitmap":Landroid/graphics/Bitmap;
    .end local p3    # "callback":Landroidx/print/PrintHelper$OnPrintFinishCallback;
    .local v5, "jobName":Ljava/lang/String;
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    .local v8, "callback":Landroidx/print/PrintHelper$OnPrintFinishCallback;
    invoke-direct/range {v3 .. v8}, Landroidx/print/PrintHelper$PrintBitmapAdapter;-><init>(Landroidx/print/PrintHelper;Ljava/lang/String;ILandroid/graphics/Bitmap;Landroidx/print/PrintHelper$OnPrintFinishCallback;)V

    .line 277
    .local v3, "printAdapter":Landroid/print/PrintDocumentAdapter;
    invoke-virtual {v1}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object p1

    invoke-virtual {v0, v5, v3, p1}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 278
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "imageFile"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 340
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/print/PrintHelper;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroidx/print/PrintHelper$OnPrintFinishCallback;)V

    .line 341
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroidx/print/PrintHelper$OnPrintFinishCallback;)V
    .locals 6
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "imageFile"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroidx/print/PrintHelper$OnPrintFinishCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 356
    new-instance v0, Landroidx/print/PrintHelper$PrintUriAdapter;

    iget v5, p0, Landroidx/print/PrintHelper;->mScaleMode:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .end local p1    # "jobName":Ljava/lang/String;
    .end local p2    # "imageFile":Landroid/net/Uri;
    .end local p3    # "callback":Landroidx/print/PrintHelper$OnPrintFinishCallback;
    .local v2, "jobName":Ljava/lang/String;
    .local v3, "imageFile":Landroid/net/Uri;
    .local v4, "callback":Landroidx/print/PrintHelper$OnPrintFinishCallback;
    invoke-direct/range {v0 .. v5}, Landroidx/print/PrintHelper$PrintUriAdapter;-><init>(Landroidx/print/PrintHelper;Ljava/lang/String;Landroid/net/Uri;Landroidx/print/PrintHelper$OnPrintFinishCallback;I)V

    .line 359
    .local v0, "printDocumentAdapter":Landroid/print/PrintDocumentAdapter;
    iget-object p1, v1, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    .line 360
    const-string p2, "print"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrintManager;

    .line 362
    .local p1, "printManager":Landroid/print/PrintManager;
    new-instance p2, Landroid/print/PrintAttributes$Builder;

    invoke-direct {p2}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 363
    .local p2, "builder":Landroid/print/PrintAttributes$Builder;
    iget p3, v1, Landroidx/print/PrintHelper;->mColorMode:I

    invoke-virtual {p2, p3}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    .line 365
    iget p3, v1, Landroidx/print/PrintHelper;->mOrientation:I

    const/4 v5, 0x1

    if-eq p3, v5, :cond_1

    iget p3, v1, Landroidx/print/PrintHelper;->mOrientation:I

    if-nez p3, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    iget p3, v1, Landroidx/print/PrintHelper;->mOrientation:I

    const/4 v5, 0x2

    if-ne p3, v5, :cond_2

    .line 368
    sget-object p3, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {p2, p3}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    goto :goto_1

    .line 366
    :cond_1
    :goto_0
    sget-object p3, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {p2, p3}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    .line 372
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object p3

    invoke-virtual {p1, v2, v0, p3}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 373
    return-void
.end method

.method public setColorMode(I)V
    .locals 0
    .param p1, "colorMode"    # I

    .line 200
    iput p1, p0, Landroidx/print/PrintHelper;->mColorMode:I

    .line 201
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .line 222
    iput p1, p0, Landroidx/print/PrintHelper;->mOrientation:I

    .line 223
    return-void
.end method

.method public setScaleMode(I)V
    .locals 0
    .param p1, "scaleMode"    # I

    .line 177
    iput p1, p0, Landroidx/print/PrintHelper;->mScaleMode:I

    .line 178
    return-void
.end method

.method writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 12
    .param p1, "attributes"    # Landroid/print/PrintAttributes;
    .param p2, "fittingMode"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p6, "writeResultCallback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .line 622
    sget-boolean v0, Landroidx/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 623
    move-object v0, p1

    move-object v6, v0

    .local v0, "pdfAttributes":Landroid/print/PrintAttributes;
    goto :goto_0

    .line 627
    .end local v0    # "pdfAttributes":Landroid/print/PrintAttributes;
    :cond_0
    invoke-static {p1}, Landroidx/print/PrintHelper;->copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 628
    .local v0, "builder":Landroid/print/PrintAttributes$Builder;
    new-instance v2, Landroid/print/PrintAttributes$Margins;

    invoke-direct {v2, v1, v1, v1, v1}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    invoke-virtual {v0, v2}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    .line 629
    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v2

    move-object v6, v2

    .line 632
    .end local v0    # "builder":Landroid/print/PrintAttributes$Builder;
    .local v6, "pdfAttributes":Landroid/print/PrintAttributes;
    :goto_0
    new-instance v3, Landroidx/print/PrintHelper$1;

    move-object v4, p0

    move-object v8, p1

    move v9, p2

    move-object v7, p3

    move-object/from16 v10, p4

    move-object/from16 v5, p5

    move-object/from16 v11, p6

    invoke-direct/range {v3 .. v11}, Landroidx/print/PrintHelper$1;-><init>(Landroidx/print/PrintHelper;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/graphics/Bitmap;Landroid/print/PrintAttributes;ILandroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    new-array v0, v1, [Ljava/lang/Void;

    .line 732
    invoke-virtual {v3, v0}, Landroidx/print/PrintHelper$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 733
    return-void
.end method
