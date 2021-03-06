.class public Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;
.super Ljava/lang/Object;
.source "StructuredFieldParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserConstants;


# static fields
.field private static jj_la1_0:[I


# instance fields
.field private jj_expentries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[I>;"
        }
    .end annotation
.end field

.field private jj_expentry:[I

.field private jj_gen:I

.field jj_input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

.field private jj_kind:I

.field private final jj_la1:[I

.field public jj_nt:Lorg/apache/james/mime4j/field/structured/parser/Token;

.field private jj_ntk:I

.field private preserveFolding:Z

.field public token:Lorg/apache/james/mime4j/field/structured/parser/Token;

.field public token_source:Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 129
    invoke-static {}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_la1_0()V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 11
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v6, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->preserveFolding:Z

    .line 126
    new-array v2, v7, [I

    iput-object v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_la1:[I

    .line 231
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_expentries:Ljava/util/Vector;

    .line 233
    iput v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_kind:I

    .line 139
    :try_start_15
    new-instance v2, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v2, p1, p2, v3, v4}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;
    :try_end_1e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_1e} :catch_3c

    .line 140
    new-instance v2, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token_source:Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;

    .line 141
    new-instance v2, Lorg/apache/james/mime4j/field/structured/parser/Token;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/structured/parser/Token;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/parser/Token;

    .line 142
    iput v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_ntk:I

    .line 143
    iput v6, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_gen:I

    .line 144
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_33
    if-ge v1, v7, :cond_43

    iget-object v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_la1:[I

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 139
    .end local v1    # "i":I
    :catch_3c
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 145
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "i":I
    :cond_43
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 8
    .param p1, "stream"    # Ljava/io/Reader;

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->preserveFolding:Z

    .line 126
    new-array v1, v5, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_la1:[I

    .line 231
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_expentries:Ljava/util/Vector;

    .line 233
    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_kind:I

    .line 160
    new-instance v1, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-direct {v1, p1, v2, v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    .line 161
    new-instance v1, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token_source:Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;

    .line 162
    new-instance v1, Lorg/apache/james/mime4j/field/structured/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/structured/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/parser/Token;

    .line 163
    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_ntk:I

    .line 164
    iput v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_gen:I

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_32
    if-ge v0, v5, :cond_3b

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 166
    :cond_3b
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;)V
    .registers 7
    .param p1, "tm"    # Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->preserveFolding:Z

    .line 126
    new-array v1, v4, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_la1:[I

    .line 231
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_expentries:Ljava/util/Vector;

    .line 233
    iput v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_kind:I

    .line 178
    iput-object p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token_source:Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;

    .line 179
    new-instance v1, Lorg/apache/james/mime4j/field/structured/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/structured/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/parser/Token;

    .line 180
    iput v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_ntk:I

    .line 181
    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_gen:I

    .line 182
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    if-ge v0, v4, :cond_2c

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 183
    :cond_2c
    return-void
.end method

.method private final doParse()Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/structured/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 61
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v4, 0x32

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 62
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 63
    .local v3, "whitespace":Z
    const/4 v1, 0x1

    .line 66
    .local v1, "first":Z
    :cond_a
    :goto_a
    iget v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_ntk:I

    if-ne v4, v7, :cond_21

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_ntk()I

    move-result v4

    :goto_12
    packed-switch v4, :pswitch_data_98

    .line 75
    iget-object v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_la1:[I

    const/4 v5, 0x0

    iget v6, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_gen:I

    aput v6, v4, v5

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 66
    :cond_21
    iget v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_ntk:I

    goto :goto_12

    .line 78
    :pswitch_24
    iget v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_ntk:I

    if-ne v4, v7, :cond_3f

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_ntk()I

    move-result v4

    :goto_2c
    packed-switch v4, :pswitch_data_a6

    .line 112
    iget-object v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_la1:[I

    const/4 v5, 0x1

    iget v6, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_gen:I

    aput v6, v4, v5

    .line 113
    invoke-direct {p0, v7}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/structured/parser/Token;

    .line 114
    new-instance v4, Lorg/apache/james/mime4j/field/structured/parser/ParseException;

    invoke-direct {v4}, Lorg/apache/james/mime4j/field/structured/parser/ParseException;-><init>()V

    throw v4

    .line 78
    :cond_3f
    iget v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_ntk:I

    goto :goto_2c

    .line 80
    :pswitch_42
    const/16 v4, 0xf

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/structured/parser/Token;

    move-result-object v2

    .line 81
    .local v2, "t":Lorg/apache/james/mime4j/field/structured/parser/Token;
    if-eqz v1, :cond_51

    .line 82
    const/4 v1, 0x0

    .line 87
    :cond_4b
    :goto_4b
    iget-object v4, v2, Lorg/apache/james/mime4j/field/structured/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    .line 83
    :cond_51
    if-eqz v3, :cond_4b

    .line 84
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const/4 v3, 0x0

    goto :goto_4b

    .line 90
    .end local v2    # "t":Lorg/apache/james/mime4j/field/structured/parser/Token;
    :pswitch_5a
    const/16 v4, 0xb

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/structured/parser/Token;

    move-result-object v2

    .line 91
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/structured/parser/Token;
    iget-object v4, v2, Lorg/apache/james/mime4j/field/structured/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    .line 94
    .end local v2    # "t":Lorg/apache/james/mime4j/field/structured/parser/Token;
    :pswitch_66
    const/16 v4, 0xd

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/structured/parser/Token;

    move-result-object v2

    .line 95
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/structured/parser/Token;
    if-eqz v1, :cond_75

    .line 96
    const/4 v1, 0x0

    .line 101
    :cond_6f
    :goto_6f
    iget-object v4, v2, Lorg/apache/james/mime4j/field/structured/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    .line 97
    :cond_75
    if-eqz v3, :cond_6f

    .line 98
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const/4 v3, 0x0

    goto :goto_6f

    .line 104
    .end local v2    # "t":Lorg/apache/james/mime4j/field/structured/parser/Token;
    :pswitch_7e
    const/16 v4, 0xc

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/structured/parser/Token;

    move-result-object v2

    .line 105
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/structured/parser/Token;
    iget-boolean v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->preserveFolding:Z

    if-eqz v4, :cond_a

    const-string v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_a

    .line 108
    .end local v2    # "t":Lorg/apache/james/mime4j/field/structured/parser/Token;
    :pswitch_8f
    const/16 v4, 0xe

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/structured/parser/Token;

    move-result-object v2

    .line 109
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/structured/parser/Token;
    const/4 v3, 0x1

    .line 110
    goto/16 :goto_a

    .line 66
    :pswitch_data_98
    .packed-switch 0xb
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
    .end packed-switch

    .line 78
    :pswitch_data_a6
    .packed-switch 0xb
        :pswitch_5a
        :pswitch_7e
        :pswitch_66
        :pswitch_8f
        :pswitch_42
    .end packed-switch
.end method

.method private final jj_consume_token(I)Lorg/apache/james/mime4j/field/structured/parser/Token;
    .registers 5
    .param p1, "kind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/structured/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/parser/Token;

    .local v0, "oldToken":Lorg/apache/james/mime4j/field/structured/parser/Token;
    iget-object v1, v0, Lorg/apache/james/mime4j/field/structured/parser/Token;->next:Lorg/apache/james/mime4j/field/structured/parser/Token;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/parser/Token;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/structured/parser/Token;->next:Lorg/apache/james/mime4j/field/structured/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/parser/Token;

    .line 197
    :goto_c
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_ntk:I

    .line 198
    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/parser/Token;

    iget v1, v1, Lorg/apache/james/mime4j/field/structured/parser/Token;->kind:I

    if-ne v1, p1, :cond_2b

    .line 199
    iget v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_gen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_gen:I

    .line 200
    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/parser/Token;

    return-object v1

    .line 196
    :cond_1e
    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/parser/Token;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token_source:Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/structured/parser/Token;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/james/mime4j/field/structured/parser/Token;->next:Lorg/apache/james/mime4j/field/structured/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/parser/Token;

    goto :goto_c

    .line 202
    :cond_2b
    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/parser/Token;

    .line 203
    iput p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_kind:I

    .line 204
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->generateParseException()Lorg/apache/james/mime4j/field/structured/parser/ParseException;

    move-result-object v1

    throw v1
.end method

.method private static jj_la1_0()V
    .registers 1

    .prologue
    .line 132
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_la1_0:[I

    .line 133
    return-void

    .line 132
    nop

    :array_a
    .array-data 4
        0xf800
        0xf800
    .end array-data
.end method

.method private final jj_ntk()I
    .registers 3

    .prologue
    .line 225
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/structured/parser/Token;->next:Lorg/apache/james/mime4j/field/structured/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_nt:Lorg/apache/james/mime4j/field/structured/parser/Token;

    if-nez v0, :cond_17

    .line 226
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token_source:Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/structured/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/structured/parser/Token;->next:Lorg/apache/james/mime4j/field/structured/parser/Token;

    iget v0, v1, Lorg/apache/james/mime4j/field/structured/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_ntk:I

    .line 228
    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_nt:Lorg/apache/james/mime4j/field/structured/parser/Token;

    iget v0, v0, Lorg/apache/james/mime4j/field/structured/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_ntk:I

    goto :goto_16
.end method


# virtual methods
.method public ReInit(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 9
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 151
    :try_start_1
    iget-object v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, p1, p2, v3, v4}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_8} :catch_26

    .line 152
    iget-object v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token_source:Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;)V

    .line 153
    new-instance v2, Lorg/apache/james/mime4j/field/structured/parser/Token;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/structured/parser/Token;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/parser/Token;

    .line 154
    iput v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_ntk:I

    .line 155
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_gen:I

    .line 156
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2d

    iget-object v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_la1:[I

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 151
    .end local v1    # "i":I
    :catch_26
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 157
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "i":I
    :cond_2d
    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .registers 6
    .param p1, "stream"    # Ljava/io/Reader;

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 169
    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v1, p1, v2, v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    .line 170
    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token_source:Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;)V

    .line 171
    new-instance v1, Lorg/apache/james/mime4j/field/structured/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/structured/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/parser/Token;

    .line 172
    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_ntk:I

    .line 173
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_gen:I

    .line 174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    const/4 v1, 0x2

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 175
    :cond_25
    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;)V
    .registers 5
    .param p1, "tm"    # Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;

    .prologue
    const/4 v2, -0x1

    .line 186
    iput-object p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token_source:Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;

    .line 187
    new-instance v1, Lorg/apache/james/mime4j/field/structured/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/structured/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/parser/Token;

    .line 188
    iput v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_ntk:I

    .line 189
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_gen:I

    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1a

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 191
    :cond_1a
    return-void
.end method

.method public final disable_tracing()V
    .registers 1

    .prologue
    .line 272
    return-void
.end method

.method public final enable_tracing()V
    .registers 1

    .prologue
    .line 269
    return-void
.end method

.method public generateParseException()Lorg/apache/james/mime4j/field/structured/parser/ParseException;
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x12

    const/4 v6, 0x1

    .line 236
    iget-object v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 237
    new-array v3, v7, [Z

    .line 238
    .local v3, "la1tokens":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v7, :cond_13

    .line 239
    aput-boolean v8, v3, v1

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 241
    :cond_13
    iget v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_kind:I

    if-ltz v4, :cond_1e

    .line 242
    iget v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_kind:I

    aput-boolean v6, v3, v4

    .line 243
    const/4 v4, -0x1

    iput v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_kind:I

    .line 245
    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    const/4 v4, 0x2

    if-ge v1, v4, :cond_40

    .line 246
    iget-object v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_la1:[I

    aget v4, v4, v1

    iget v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_gen:I

    if-ne v4, v5, :cond_3d

    .line 247
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2b
    const/16 v4, 0x20

    if-ge v2, v4, :cond_3d

    .line 248
    sget-object v4, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_la1_0:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_3a

    .line 249
    aput-boolean v6, v3, v2

    .line 247
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 245
    .end local v2    # "j":I
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 254
    :cond_40
    const/4 v1, 0x0

    :goto_41
    if-ge v1, v7, :cond_59

    .line 255
    aget-boolean v4, v3, v1

    if-eqz v4, :cond_56

    .line 256
    new-array v4, v6, [I

    iput-object v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_expentry:[I

    .line 257
    iget-object v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_expentry:[I

    aput v1, v4, v8

    .line 258
    iget-object v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_expentries:Ljava/util/Vector;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_expentry:[I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 254
    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 261
    :cond_59
    iget-object v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v0, v4, [[I

    .line 262
    .local v0, "exptokseq":[[I
    const/4 v1, 0x0

    :goto_62
    iget-object v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_79

    .line 263
    iget-object v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    check-cast v4, [I

    aput-object v4, v0, v1

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    .line 265
    :cond_79
    new-instance v4, Lorg/apache/james/mime4j/field/structured/parser/ParseException;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/parser/Token;

    sget-object v6, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v4, v5, v0, v6}, Lorg/apache/james/mime4j/field/structured/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/structured/parser/Token;[[I[Ljava/lang/String;)V

    return-object v4
.end method

.method public final getNextToken()Lorg/apache/james/mime4j/field/structured/parser/Token;
    .registers 3

    .prologue
    .line 208
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/structured/parser/Token;->next:Lorg/apache/james/mime4j/field/structured/parser/Token;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/structured/parser/Token;->next:Lorg/apache/james/mime4j/field/structured/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/parser/Token;

    .line 210
    :goto_c
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_ntk:I

    .line 211
    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->jj_gen:I

    .line 212
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/parser/Token;

    return-object v0

    .line 209
    :cond_18
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token_source:Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/structured/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/structured/parser/Token;->next:Lorg/apache/james/mime4j/field/structured/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/parser/Token;

    goto :goto_c
.end method

.method public final getToken(I)Lorg/apache/james/mime4j/field/structured/parser/Token;
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 216
    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/parser/Token;

    .line 217
    .local v1, "t":Lorg/apache/james/mime4j/field/structured/parser/Token;
    const/4 v0, 0x0

    .local v0, "i":I
    move-object v2, v1

    .end local v1    # "t":Lorg/apache/james/mime4j/field/structured/parser/Token;
    .local v2, "t":Lorg/apache/james/mime4j/field/structured/parser/Token;
    :goto_4
    if-ge v0, p1, :cond_19

    .line 218
    iget-object v3, v2, Lorg/apache/james/mime4j/field/structured/parser/Token;->next:Lorg/apache/james/mime4j/field/structured/parser/Token;

    if-eqz v3, :cond_10

    iget-object v1, v2, Lorg/apache/james/mime4j/field/structured/parser/Token;->next:Lorg/apache/james/mime4j/field/structured/parser/Token;

    .line 217
    .end local v2    # "t":Lorg/apache/james/mime4j/field/structured/parser/Token;
    .restart local v1    # "t":Lorg/apache/james/mime4j/field/structured/parser/Token;
    :goto_c
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    .end local v1    # "t":Lorg/apache/james/mime4j/field/structured/parser/Token;
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/structured/parser/Token;
    goto :goto_4

    .line 219
    :cond_10
    iget-object v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->token_source:Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/structured/parser/Token;

    move-result-object v1

    iput-object v1, v2, Lorg/apache/james/mime4j/field/structured/parser/Token;->next:Lorg/apache/james/mime4j/field/structured/parser/Token;

    .end local v2    # "t":Lorg/apache/james/mime4j/field/structured/parser/Token;
    .restart local v1    # "t":Lorg/apache/james/mime4j/field/structured/parser/Token;
    goto :goto_c

    .line 221
    .end local v1    # "t":Lorg/apache/james/mime4j/field/structured/parser/Token;
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/structured/parser/Token;
    :cond_19
    return-object v2
.end method

.method public isFoldingPreserved()Z
    .registers 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->preserveFolding:Z

    return v0
.end method

.method public parse()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/structured/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 50
    :try_start_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->doParse()Ljava/lang/String;
    :try_end_3
    .catch Lorg/apache/james/mime4j/field/structured/parser/TokenMgrError; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 51
    :catch_5
    move-exception v0

    .line 55
    .local v0, "e":Lorg/apache/james/mime4j/field/structured/parser/TokenMgrError;
    new-instance v1, Lorg/apache/james/mime4j/field/structured/parser/ParseException;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/structured/parser/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setFoldingPreserved(Z)V
    .registers 2
    .param p1, "preserveFolding"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->preserveFolding:Z

    .line 42
    return-void
.end method
