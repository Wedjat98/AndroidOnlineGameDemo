.class Lcom/games37/riversdk/core/util/imageloader/disklrucahe/StrictLineReader$1;
.super Ljava/io/ByteArrayOutputStream;
.source "StrictLineReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/util/imageloader/disklrucahe/StrictLineReader;->readLine()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/StrictLineReader;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/StrictLineReader;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/core/util/imageloader/disklrucahe/StrictLineReader;
    .param p2, "x0"    # I

    .prologue
    .line 148
    iput-object p1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/StrictLineReader$1;->this$0:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/StrictLineReader;

    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 151
    iget v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/StrictLineReader$1;->count:I

    if-lez v2, :cond_27

    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/StrictLineReader$1;->buf:[B

    iget v3, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/StrictLineReader$1;->count:I

    add-int/lit8 v3, v3, -0x1

    aget-byte v2, v2, v3

    const/16 v3, 0xd

    if-ne v2, v3, :cond_27

    iget v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/StrictLineReader$1;->count:I

    add-int/lit8 v1, v2, -0x1

    .line 153
    .local v1, "length":I
    :goto_14
    :try_start_14
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/StrictLineReader$1;->buf:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/StrictLineReader$1;->this$0:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/StrictLineReader;

    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/StrictLineReader;->charset:Ljava/nio/charset/Charset;
    invoke-static {v5}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/StrictLineReader;->access$000(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/StrictLineReader;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_26
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_26} :catch_2a

    return-object v2

    .line 151
    .end local v1    # "length":I
    :cond_27
    iget v1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/StrictLineReader$1;->count:I

    goto :goto_14

    .line 154
    .restart local v1    # "length":I
    :catch_2a
    move-exception v0

    .line 155
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method
