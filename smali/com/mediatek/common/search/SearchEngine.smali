.class public final Lcom/mediatek/common/search/SearchEngine;
.super Ljava/lang/Object;
.source "SearchEngine.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/common/search/SearchEngine;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = true

.field private static final DEFAULT_SP:Ljava/lang/String; = "--"

.field private static final EMPTY:Ljava/lang/String; = "nil"

.field public static final FAVICON:I = 0x2

.field private static final FIELD_ENCODING:I = 0x4

.field private static final FIELD_FAVICON:I = 0x2

.field private static final FIELD_KEYWORD:I = 0x1

.field private static final FIELD_LABEL:I = 0x0

.field private static final FIELD_SEARCH_URI:I = 0x3

.field private static final FIELD_SUGGEST_URI:I = 0x5

.field public static final NAME:I = -0x1

.field private static final NUM_FIELDS:I = 0x6

.field private static final PARAMETER_INPUT_ENCODING:Ljava/lang/String; = "{inputEncoding}"

.field private static final PARAMETER_LANGUAGE:Ljava/lang/String; = "{language}"

.field private static final PARAMETER_SEARCH_TERMS:Ljava/lang/String; = "{searchTerms}"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mSearchEngineData:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-string v0, "SearchEngine"

    sput-object v0, Lcom/mediatek/common/search/SearchEngine;->TAG:Ljava/lang/String;

    .line 216
    new-instance v0, Lcom/mediatek/common/search/SearchEngine$1;

    invoke-direct {v0}, Lcom/mediatek/common/search/SearchEngine$1;-><init>()V

    sput-object v0, Lcom/mediatek/common/search/SearchEngine;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/common/search/SearchEngine;->mName:Ljava/lang/String;

    .line 235
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/common/search/SearchEngine;->mSearchEngineData:[Ljava/lang/String;

    .line 236
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/mediatek/common/search/SearchEngine;->mName:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/mediatek/common/search/SearchEngine;->mSearchEngineData:[Ljava/lang/String;

    .line 99
    return-void
.end method

.method private getFormattedUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "templateUri"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;

    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 195
    return-object v1

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/mediatek/common/search/SearchEngine;->mSearchEngineData:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    .line 201
    .local v0, "enc":Ljava/lang/String;
    :try_start_0
    const-string v2, "{searchTerms}"

    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 202
    :catch_0
    move-exception v2

    .line 203
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v3, Lcom/mediatek/common/search/SearchEngine;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occured when encoding query "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-object v1
.end method

.method private getSearchUri()Ljava/lang/String;
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/mediatek/common/search/SearchEngine;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getSuggestUri()Ljava/lang/String;
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/mediatek/common/search/SearchEngine;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static parseField([Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [Ljava/lang/String;
    .param p1, "fieldIndex"    # I

    .line 326
    add-int/lit8 v0, p1, 0x1

    .line 328
    .local v0, "realFieldIndex":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-lt v1, v0, :cond_1

    aget-object v1, p0, v0

    .line 329
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "nil"

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 332
    :cond_0
    aget-object v1, p0, v0

    return-object v1

    .line 330
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static parseFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;
    .locals 19
    .param p0, "configInfo"    # Ljava/lang/String;
    .param p1, "sp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 255
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/mediatek/common/search/SearchEngine;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parse From config file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    if-eqz v0, :cond_8

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 262
    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    :cond_0
    const-string v1, "--"

    .line 266
    .end local p1    # "sp":Ljava/lang/String;
    .local v1, "sp":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "configData":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x7

    if-ne v3, v4, :cond_7

    .line 272
    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/mediatek/common/search/SearchEngine;->parseField([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "engineName":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/mediatek/common/search/SearchEngine;->parseField([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, "engineLabel":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/mediatek/common/search/SearchEngine;->parseField([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 275
    .local v11, "engineKeyword":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-static {v2, v5}, Lcom/mediatek/common/search/SearchEngine;->parseField([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 276
    .local v12, "engineFavicon":Ljava/lang/String;
    const/4 v5, 0x3

    invoke-static {v2, v5}, Lcom/mediatek/common/search/SearchEngine;->parseField([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 277
    .local v5, "engineSearchUri":Ljava/lang/String;
    const/4 v6, 0x4

    invoke-static {v2, v6}, Lcom/mediatek/common/search/SearchEngine;->parseField([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 278
    .local v6, "engineEncoding":Ljava/lang/String;
    const/4 v7, 0x5

    invoke-static {v2, v7}, Lcom/mediatek/common/search/SearchEngine;->parseField([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 281
    .local v7, "engineSuggestUri":Ljava/lang/String;
    sget-object v8, Lcom/mediatek/common/search/SearchEngine;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SearchEngine consturctor called, search engine name is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    if-eqz v5, :cond_6

    .line 290
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    .line 291
    .local v13, "locale":Ljava/util/Locale;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v14, v8

    .line 292
    .local v14, "language":Ljava/lang/StringBuilder;
    invoke-virtual {v13}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 293
    const/16 v8, 0x2d

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v13}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_2
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 298
    .local v15, "language_str":Ljava/lang/String;
    const-string v8, "{language}"

    invoke-virtual {v5, v8, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 299
    if-eqz v7, :cond_3

    .line 300
    invoke-virtual {v7, v8, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 304
    :cond_3
    if-nez v6, :cond_4

    .line 305
    const-string v6, "UTF-8"

    move-object v10, v6

    goto :goto_0

    .line 304
    :cond_4
    move-object v10, v6

    .line 309
    .end local v6    # "engineEncoding":Ljava/lang/String;
    .local v10, "engineEncoding":Ljava/lang/String;
    :goto_0
    const-string v6, "{inputEncoding}"

    invoke-virtual {v5, v6, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 310
    .end local v5    # "engineSearchUri":Ljava/lang/String;
    .local v16, "engineSearchUri":Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 311
    invoke-virtual {v7, v6, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v17, v7

    goto :goto_1

    .line 310
    :cond_5
    move-object/from16 v17, v7

    .line 314
    .end local v7    # "engineSuggestUri":Ljava/lang/String;
    .local v17, "engineSuggestUri":Ljava/lang/String;
    :goto_1
    move-object v5, v4

    move-object v6, v11

    move-object v7, v12

    move-object/from16 v8, v16

    move-object v9, v10

    move-object/from16 v18, v10

    .end local v10    # "engineEncoding":Ljava/lang/String;
    .local v18, "engineEncoding":Ljava/lang/String;
    move-object/from16 v10, v17

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v5

    .line 316
    .local v5, "datas":[Ljava/lang/String;
    new-instance v6, Lcom/mediatek/common/search/SearchEngine;

    invoke-direct {v6, v3, v5}, Lcom/mediatek/common/search/SearchEngine;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 318
    .local v6, "newInstance":Lcom/mediatek/common/search/SearchEngine;
    return-object v6

    .line 285
    .end local v13    # "locale":Ljava/util/Locale;
    .end local v14    # "language":Ljava/lang/StringBuilder;
    .end local v15    # "language_str":Ljava/lang/String;
    .end local v16    # "engineSearchUri":Ljava/lang/String;
    .end local v17    # "engineSuggestUri":Ljava/lang/String;
    .end local v18    # "engineEncoding":Ljava/lang/String;
    .local v5, "engineSearchUri":Ljava/lang/String;
    .local v6, "engineEncoding":Ljava/lang/String;
    .restart local v7    # "engineSuggestUri":Ljava/lang/String;
    :cond_6
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has an empty search URI"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 269
    .end local v3    # "engineName":Ljava/lang/String;
    .end local v4    # "engineLabel":Ljava/lang/String;
    .end local v5    # "engineSearchUri":Ljava/lang/String;
    .end local v6    # "engineEncoding":Ljava/lang/String;
    .end local v7    # "engineSuggestUri":Ljava/lang/String;
    .end local v11    # "engineKeyword":Ljava/lang/String;
    .end local v12    # "engineFavicon":Ljava/lang/String;
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Field Missing"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 259
    .end local v1    # "sp":Ljava/lang/String;
    .end local v2    # "configData":[Ljava/lang/String;
    .restart local p1    # "sp":Ljava/lang/String;
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Empty config info"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public getFaviconUri()Ljava/lang/String;
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/mediatek/common/search/SearchEngine;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/mediatek/common/search/SearchEngine;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/mediatek/common/search/SearchEngine;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/mediatek/common/search/SearchEngine;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchUriForQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .line 133
    invoke-direct {p0}, Lcom/mediatek/common/search/SearchEngine;->getSearchUri()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/mediatek/common/search/SearchEngine;->getFormattedUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestUriForQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .line 146
    invoke-direct {p0}, Lcom/mediatek/common/search/SearchEngine;->getSuggestUri()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/mediatek/common/search/SearchEngine;->getFormattedUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public supportsSuggestions()Z
    .locals 1

    .line 157
    invoke-direct {p0}, Lcom/mediatek/common/search/SearchEngine;->getSuggestUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchEngine{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/common/search/SearchEngine;->mSearchEngineData:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 248
    iget-object v0, p0, Lcom/mediatek/common/search/SearchEngine;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/mediatek/common/search/SearchEngine;->mSearchEngineData:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 250
    return-void
.end method
