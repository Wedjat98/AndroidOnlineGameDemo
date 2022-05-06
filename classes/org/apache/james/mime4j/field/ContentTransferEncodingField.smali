.class public Lorg/apache/james/mime4j/field/ContentTransferEncodingField;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "ContentTransferEncodingField.java"


# static fields
.field static final PARSER:Lorg/apache/james/mime4j/field/FieldParser;


# instance fields
.field private encoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    new-instance v0, Lorg/apache/james/mime4j/field/ContentTransferEncodingField$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/ContentTransferEncodingField$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "raw"    # Lorg/apache/james/mime4j/util/ByteSequence;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V

    .line 33
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;->encoding:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static getEncoding(Lorg/apache/james/mime4j/field/ContentTransferEncodingField;)Ljava/lang/String;
    .registers 2
    .param p0, "f"    # Lorg/apache/james/mime4j/field/ContentTransferEncodingField;

    .prologue
    .line 53
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_11

    .line 54
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_10
    return-object v0

    :cond_11
    const-string v0, "7bit"

    goto :goto_10
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;->encoding:Ljava/lang/String;

    return-object v0
.end method
