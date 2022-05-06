.class public Lorg/apache/james/mime4j/field/ContentTypeField;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "ContentTypeField.java"


# static fields
.field public static final PARAM_BOUNDARY:Ljava/lang/String; = "boundary"

.field public static final PARAM_CHARSET:Ljava/lang/String; = "charset"

.field static final PARSER:Lorg/apache/james/mime4j/field/FieldParser;

.field public static final TYPE_MESSAGE_RFC822:Ljava/lang/String; = "message/rfc822"

.field public static final TYPE_MULTIPART_DIGEST:Ljava/lang/String; = "multipart/digest"

.field public static final TYPE_MULTIPART_PREFIX:Ljava/lang/String; = "multipart/"

.field public static final TYPE_TEXT_PLAIN:Ljava/lang/String; = "text/plain"

.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private mimeType:Ljava/lang/String;

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parseException:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/ContentTypeField;->log:Lorg/apache/commons/logging/Log;

    .line 252
    new-instance v0, Lorg/apache/james/mime4j/field/ContentTypeField$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/ContentTypeField$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/ContentTypeField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "raw"    # Lorg/apache/james/mime4j/util/ByteSequence;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parsed:Z

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->mimeType:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parameters:Ljava/util/Map;

    .line 67
    return-void
.end method

.method public static getCharset(Lorg/apache/james/mime4j/field/ContentTypeField;)Ljava/lang/String;
    .registers 3
    .param p0, "f"    # Lorg/apache/james/mime4j/field/ContentTypeField;

    .prologue
    .line 203
    if-eqz p0, :cond_f

    .line 204
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getCharset()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "charset":Ljava/lang/String;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_f

    .line 209
    .end local v0    # "charset":Ljava/lang/String;
    :goto_e
    return-object v0

    :cond_f
    const-string v0, "us-ascii"

    goto :goto_e
.end method

.method public static getMimeType(Lorg/apache/james/mime4j/field/ContentTypeField;Lorg/apache/james/mime4j/field/ContentTypeField;)Ljava/lang/String;
    .registers 3
    .param p0, "child"    # Lorg/apache/james/mime4j/field/ContentTypeField;
    .param p1, "parent"    # Lorg/apache/james/mime4j/field/ContentTypeField;

    .prologue
    .line 182
    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->isMultipart()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getBoundary()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_28

    .line 185
    :cond_18
    if-eqz p1, :cond_25

    const-string v0, "multipart/digest"

    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->isMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 186
    const-string v0, "message/rfc822"

    .line 192
    :goto_24
    return-object v0

    .line 188
    :cond_25
    const-string v0, "text/plain"

    goto :goto_24

    .line 192
    :cond_28
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getMimeType()Ljava/lang/String;

    move-result-object v0

    goto :goto_24
.end method

.method private parse()V
    .registers 15

    .prologue
    .line 213
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "body":Ljava/lang/String;
    new-instance v8, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;

    new-instance v11, Ljava/io/StringReader;

    invoke-direct {v11, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v11}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;-><init>(Ljava/io/Reader;)V

    .line 217
    .local v8, "parser":Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;
    :try_start_e
    invoke-virtual {v8}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->parseAll()V
    :try_end_11
    .catch Lorg/apache/james/mime4j/field/contenttype/parser/ParseException; {:try_start_e .. :try_end_11} :catch_6d
    .catch Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError; {:try_start_e .. :try_end_11} :catch_a0

    .line 230
    :goto_11
    invoke-virtual {v8}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getType()Ljava/lang/String;

    move-result-object v10

    .line 231
    .local v10, "type":Ljava/lang/String;
    invoke-virtual {v8}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getSubType()Ljava/lang/String;

    move-result-object v9

    .line 233
    .local v9, "subType":Ljava/lang/String;
    if-eqz v10, :cond_dc

    if-eqz v9, :cond_dc

    .line 234
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->mimeType:Ljava/lang/String;

    .line 236
    invoke-virtual {v8}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getParamNames()Ljava/util/List;

    move-result-object v5

    .line 237
    .local v5, "paramNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v8}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getParamValues()Ljava/util/List;

    move-result-object v7

    .line 239
    .local v7, "paramValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_dc

    if-eqz v7, :cond_dc

    .line 240
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 241
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_53
    if-ge v2, v3, :cond_dc

    .line 242
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 243
    .local v4, "paramName":Ljava/lang/String;
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 244
    .local v6, "paramValue":Ljava/lang/String;
    iget-object v11, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parameters:Ljava/util/Map;

    invoke-interface {v11, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 218
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v4    # "paramName":Ljava/lang/String;
    .end local v5    # "paramNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "paramValue":Ljava/lang/String;
    .end local v7    # "paramValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "subType":Ljava/lang/String;
    .end local v10    # "type":Ljava/lang/String;
    :catch_6d
    move-exception v1

    .line 219
    .local v1, "e":Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
    sget-object v11, Lorg/apache/james/mime4j/field/ContentTypeField;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v11}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_9c

    .line 220
    sget-object v11, Lorg/apache/james/mime4j/field/ContentTypeField;->log:Lorg/apache/commons/logging/Log;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Parsing value \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\': "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 222
    :cond_9c
    iput-object v1, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parseException:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    goto/16 :goto_11

    .line 223
    .end local v1    # "e":Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
    :catch_a0
    move-exception v1

    .line 224
    .local v1, "e":Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;
    sget-object v11, Lorg/apache/james/mime4j/field/ContentTypeField;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v11}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_cf

    .line 225
    sget-object v11, Lorg/apache/james/mime4j/field/ContentTypeField;->log:Lorg/apache/commons/logging/Log;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Parsing value \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\': "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 227
    :cond_cf
    new-instance v11, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parseException:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    goto/16 :goto_11

    .line 249
    .end local v1    # "e":Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;
    .restart local v9    # "subType":Ljava/lang/String;
    .restart local v10    # "type":Ljava/lang/String;
    :cond_dc
    const/4 v11, 0x1

    iput-boolean v11, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parsed:Z

    .line 250
    return-void
.end method


# virtual methods
.method public getBoundary()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    const-string v0, "boundary"

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .registers 2

    .prologue
    .line 165
    const-string v0, "charset"

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parsed:Z

    if-nez v0, :cond_7

    .line 88
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->parse()V

    .line 90
    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parsed:Z

    if-nez v0, :cond_7

    .line 102
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->parse()V

    .line 104
    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parameters:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parsed:Z

    if-nez v0, :cond_7

    .line 114
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->parse()V

    .line 116
    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parameters:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParseException()Lorg/apache/james/mime4j/field/ParseException;
    .registers 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getParseException()Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    move-result-object v0

    return-object v0
.end method

.method public getParseException()Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
    .registers 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parsed:Z

    if-nez v0, :cond_7

    .line 76
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->parse()V

    .line 78
    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parseException:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    return-object v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parsed:Z

    if-nez v0, :cond_7

    .line 129
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->parse()V

    .line 131
    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMultipart()Z
    .registers 3

    .prologue
    .line 142
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parsed:Z

    if-nez v0, :cond_7

    .line 143
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->parse()V

    .line 145
    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->mimeType:Ljava/lang/String;

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
