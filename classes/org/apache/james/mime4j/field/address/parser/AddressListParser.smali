.class public Lorg/apache/james/mime4j/field/address/parser/AddressListParser;
.super Ljava/lang/Object;
.source "AddressListParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/address/parser/AddressListParserTreeConstants;
.implements Lorg/apache/james/mime4j/field/address/parser/AddressListParserConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/field/address/parser/AddressListParser$1;,
        Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;,
        Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
    }
.end annotation


# static fields
.field private static jj_la1_0:[I

.field private static jj_la1_1:[I


# instance fields
.field private final jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

.field private jj_endpos:I

.field private jj_expentries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[I>;"
        }
    .end annotation
.end field

.field private jj_expentry:[I

.field private jj_gc:I

.field private jj_gen:I

.field jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

.field private jj_kind:I

.field private jj_la:I

.field private final jj_la1:[I

.field private jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

.field private jj_lasttokens:[I

.field private final jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

.field public jj_nt:Lorg/apache/james/mime4j/field/address/parser/Token;

.field private jj_ntk:I

.field private jj_rescan:Z

.field private jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

.field private jj_semLA:Z

.field protected jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

.field public lookingAhead:Z

.field public token:Lorg/apache/james/mime4j/field/address/parser/Token;

.field public token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 737
    invoke-static {}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_0()V

    .line 738
    invoke-static {}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_1()V

    .line 739
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 751
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 752
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 11
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x16

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    .line 730
    iput-boolean v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    .line 733
    new-array v2, v7, [I

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    .line 746
    const/4 v2, 0x2

    new-array v2, v2, [Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    .line 747
    iput-boolean v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    .line 748
    iput v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    .line 842
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;-><init>(Lorg/apache/james/mime4j/field/address/parser/AddressListParser$1;)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    .line 888
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    .line 890
    iput v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    .line 891
    const/16 v2, 0x64

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    .line 754
    :try_start_34
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v2, p1, p2, v3, v4}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;
    :try_end_3d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_34 .. :try_end_3d} :catch_5b

    .line 755
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    .line 756
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 757
    iput v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 758
    iput v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 759
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_52
    if-ge v1, v7, :cond_62

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 754
    .end local v1    # "i":I
    :catch_5b
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 760
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "i":I
    :cond_62
    const/4 v1, 0x0

    :goto_63
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v2, v2

    if-ge v1, v2, :cond_74

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    .line 761
    :cond_74
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 9
    .param p1, "stream"    # Ljava/io/Reader;

    .prologue
    const/16 v6, 0x16

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    .line 730
    iput-boolean v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    .line 733
    new-array v1, v6, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    .line 746
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    .line 747
    iput-boolean v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    .line 748
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    .line 842
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;-><init>(Lorg/apache/james/mime4j/field/address/parser/AddressListParser$1;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    .line 888
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    .line 890
    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    .line 891
    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    .line 778
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-direct {v1, p1, v5, v5}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    .line 779
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    .line 780
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 781
    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 782
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 783
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_51
    if-ge v0, v6, :cond_5a

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 784
    :cond_5a
    const/4 v0, 0x0

    :goto_5b
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_6c

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 785
    :cond_6c
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;)V
    .registers 8
    .param p1, "tm"    # Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    .prologue
    const/16 v5, 0x16

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    .line 730
    iput-boolean v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    .line 733
    new-array v1, v5, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    .line 746
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    .line 747
    iput-boolean v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    .line 748
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    .line 842
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;-><init>(Lorg/apache/james/mime4j/field/address/parser/AddressListParser$1;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    .line 888
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    .line 890
    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    .line 891
    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    .line 799
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    .line 800
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 801
    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 802
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 803
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_42
    if-ge v0, v5, :cond_4b

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 804
    :cond_4b
    const/4 v0, 0x0

    :goto_4c
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_5d

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 805
    :cond_5d
    return-void
.end method

.method private final jj_2_1(I)Z
    .registers 6
    .param p1, "xla"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 640
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 641
    :try_start_a
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_1()Z
    :try_end_d
    .catch Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_a .. :try_end_d} :catch_16
    .catchall {:try_start_a .. :try_end_d} :catchall_1b

    move-result v3

    if-nez v3, :cond_14

    .line 643
    :goto_10
    invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    :goto_13
    return v1

    :cond_14
    move v1, v2

    .line 641
    goto :goto_10

    .line 642
    :catch_16
    move-exception v0

    .line 643
    .local v0, "ls":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
    invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    goto :goto_13

    .end local v0    # "ls":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
    :catchall_1b
    move-exception v1

    invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    throw v1
.end method

.method private final jj_2_2(I)Z
    .registers 5
    .param p1, "xla"    # I

    .prologue
    const/4 v2, 0x1

    .line 647
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 648
    :try_start_9
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_2()Z
    :try_end_c
    .catch Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_16
    .catchall {:try_start_9 .. :try_end_c} :catchall_1c

    move-result v1

    if-nez v1, :cond_14

    move v1, v2

    .line 650
    :goto_10
    invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    :goto_13
    return v1

    .line 648
    :cond_14
    const/4 v1, 0x0

    goto :goto_10

    .line 649
    :catch_16
    move-exception v0

    .line 650
    .local v0, "ls":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
    invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    move v1, v2

    goto :goto_13

    .end local v0    # "ls":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
    :catchall_1c
    move-exception v1

    invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    throw v1
.end method

.method private final jj_3R_10()Z
    .registers 3

    .prologue
    .line 665
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 666
    .local v0, "xsp":Lorg/apache/james/mime4j/field/address/parser/Token;
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_12()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 667
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 668
    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    .line 670
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private final jj_3R_11()Z
    .registers 3

    .prologue
    .line 694
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 695
    .local v0, "xsp":Lorg/apache/james/mime4j/field/address/parser/Token;
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 696
    :cond_c
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 697
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 698
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 699
    const/16 v1, 0x1f

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    .line 701
    :goto_21
    return v1

    :cond_22
    const/4 v1, 0x0

    goto :goto_21
.end method

.method private final jj_3R_12()Z
    .registers 3

    .prologue
    .line 654
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    .line 660
    :goto_9
    return v1

    .line 657
    :cond_a
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 658
    .local v0, "xsp":Lorg/apache/james/mime4j/field/address/parser/Token;
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_13()Z

    move-result v1

    if-eqz v1, :cond_a

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 660
    const/4 v1, 0x0

    goto :goto_9
.end method

.method private final jj_3R_13()Z
    .registers 3

    .prologue
    .line 706
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 707
    .local v0, "xsp":Lorg/apache/james/mime4j/field/address/parser/Token;
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 708
    :cond_c
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    .line 709
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private final jj_3R_8()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 713
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_9()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 716
    :cond_7
    :goto_7
    return v0

    .line 714
    :cond_8
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 715
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_10()Z

    move-result v1

    if-nez v1, :cond_7

    .line 716
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_9()Z
    .registers 3

    .prologue
    .line 680
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 681
    .local v0, "xsp":Lorg/apache/james/mime4j/field/address/parser/Token;
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 682
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 683
    const/16 v1, 0x1f

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    .line 689
    :goto_15
    return v1

    .line 686
    :cond_16
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 687
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_11()Z

    move-result v1

    if-eqz v1, :cond_16

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 689
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private final jj_3_1()Z
    .registers 2

    .prologue
    .line 720
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_8()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 721
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3_2()Z
    .registers 2

    .prologue
    .line 674
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_8()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 675
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private jj_add_error_token(II)V
    .registers 10
    .param p1, "kind"    # I
    .param p2, "pos"    # I

    .prologue
    .line 895
    const/16 v4, 0x64

    if-lt p2, v4, :cond_5

    .line 920
    :cond_4
    :goto_4
    return-void

    .line 896
    :cond_5
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    add-int/lit8 v4, v4, 0x1

    if-ne p2, v4, :cond_16

    .line 897
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    aput p1, v4, v5

    goto :goto_4

    .line 898
    :cond_16
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    if-eqz v4, :cond_4

    .line 899
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    new-array v4, v4, [I

    iput-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    .line 900
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    if-ge v2, v4, :cond_30

    .line 901
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    aget v5, v5, v2

    aput v5, v4, v2

    .line 900
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 903
    :cond_30
    const/4 v1, 0x0

    .line 904
    .local v1, "exists":Z
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :cond_37
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 905
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    move-object v3, v4

    check-cast v3, [I

    .line 906
    .local v3, "oldentry":[I
    array-length v4, v3

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    array-length v5, v5

    if-ne v4, v5, :cond_37

    .line 907
    const/4 v1, 0x1

    .line 908
    const/4 v2, 0x0

    :goto_4e
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    array-length v4, v4

    if-ge v2, v4, :cond_5c

    .line 909
    aget v4, v3, v2

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    aget v5, v5, v2

    if-eq v4, v5, :cond_72

    .line 910
    const/4 v1, 0x0

    .line 914
    :cond_5c
    if-eqz v1, :cond_37

    .line 917
    .end local v3    # "oldentry":[I
    :cond_5e
    if-nez v1, :cond_67

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 918
    :cond_67
    if-eqz p2, :cond_4

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    add-int/lit8 v5, p2, -0x1

    aput p1, v4, v5

    goto :goto_4

    .line 908
    .restart local v3    # "oldentry":[I
    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e
.end method

.method private final jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    .registers 7
    .param p1, "kind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 819
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .local v2, "oldToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    iget-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-eqz v3, :cond_40

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v3, v3, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 821
    :goto_c
    const/4 v3, -0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 822
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v3, v3, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    if-ne v3, p1, :cond_53

    .line 823
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 824
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    const/16 v4, 0x64

    if-le v3, v4, :cond_50

    .line 825
    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    .line 826
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_29
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v3, v3

    if-ge v1, v3, :cond_50

    .line 827
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    aget-object v0, v3, v1

    .line 828
    .local v0, "c":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :goto_32
    if-eqz v0, :cond_4d

    .line 829
    iget v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-ge v3, v4, :cond_3d

    const/4 v3, 0x0

    iput-object v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 830
    :cond_3d
    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    goto :goto_32

    .line 820
    .end local v0    # "c":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    .end local v1    # "i":I
    :cond_40
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_c

    .line 826
    .restart local v0    # "c":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    .restart local v1    # "i":I
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 834
    .end local v0    # "c":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    .end local v1    # "i":I
    :cond_50
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    return-object v3

    .line 836
    :cond_53
    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 837
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    .line 838
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->generateParseException()Lorg/apache/james/mime4j/field/address/parser/ParseException;

    move-result-object v3

    throw v3
.end method

.method private static jj_la1_0()V
    .registers 1

    .prologue
    .line 741
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_0:[I

    .line 742
    return-void

    .line 741
    :array_a
    .array-data 4
        0x2
        -0x7fffbfc0
        0x8
        -0x7fffbfc0
        0x50
        -0x7fffbfc0
        -0x7fffbfc0
        -0x7fffbfc0
        0x8
        -0x7fffbfc0
        0x100
        0x108
        0x8
        -0x7fffc000
        -0x7fffc000
        -0x7fffc000
        -0x7fffbe00
        0x200
        -0x7fffc000
        0x4200
        0x200
        0x44000
    .end array-data
.end method

.method private static jj_la1_1()V
    .registers 1

    .prologue
    .line 744
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_1:[I

    .line 745
    return-void

    .line 744
    :array_a
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private final jj_ntk()I
    .registers 3

    .prologue
    .line 882
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_nt:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-nez v0, :cond_17

    .line 883
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v0, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 885
    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_nt:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_16
.end method

.method private final jj_rescan_token()V
    .registers 5

    .prologue
    .line 968
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    .line 969
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2f

    .line 971
    :try_start_7
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    aget-object v1, v2, v0

    .line 973
    .local v1, "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :cond_b
    iget v2, v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-le v2, v3, :cond_1e

    .line 974
    iget v2, v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->arg:I

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    iget-object v2, v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 975
    packed-switch v0, :pswitch_data_34

    .line 980
    :cond_1e
    :goto_1e
    iget-object v1, v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    .line 981
    if-nez v1, :cond_b

    .line 969
    .end local v1    # "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 976
    .restart local v1    # "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :pswitch_25
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_1()Z

    goto :goto_1e

    .line 982
    .end local v1    # "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :catch_29
    move-exception v2

    goto :goto_22

    .line 977
    .restart local v1    # "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :pswitch_2b
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_2()Z
    :try_end_2e
    .catch Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_7 .. :try_end_2e} :catch_29

    goto :goto_1e

    .line 984
    .end local v1    # "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :cond_2f
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    .line 985
    return-void

    .line 975
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_25
        :pswitch_2b
    .end packed-switch
.end method

.method private final jj_save(II)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "xla"    # I

    .prologue
    .line 988
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    aget-object v0, v2, p1

    .line 989
    .local v0, "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :goto_4
    iget v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-le v2, v3, :cond_16

    .line 990
    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    if-nez v2, :cond_25

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    .end local v0    # "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    .local v1, "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    move-object v0, v1

    .line 993
    .end local v1    # "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    .restart local v0    # "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :cond_16
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    add-int/2addr v2, p2

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    sub-int/2addr v2, v3

    iput v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput p2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->arg:I

    .line 994
    return-void

    .line 991
    :cond_25
    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    goto :goto_4
.end method

.method private final jj_scan_token(I)Z
    .registers 6
    .param p1, "kind"    # I

    .prologue
    .line 844
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-ne v2, v3, :cond_3b

    .line 845
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    .line 846
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-nez v2, :cond_32

    .line 847
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 854
    :goto_20
    iget-boolean v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    if-eqz v2, :cond_47

    .line 855
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 856
    .local v1, "tok":Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_27
    if-eqz v1, :cond_42

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-eq v1, v2, :cond_42

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_27

    .line 849
    .end local v0    # "i":I
    .end local v1    # "tok":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_32
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_20

    .line 852
    :cond_3b
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_20

    .line 857
    .restart local v0    # "i":I
    .restart local v1    # "tok":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_42
    if-eqz v1, :cond_47

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_add_error_token(II)V

    .line 859
    .end local v0    # "i":I
    .end local v1    # "tok":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_47
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v2, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    if-eq v2, p1, :cond_4f

    const/4 v2, 0x1

    .line 861
    :goto_4e
    return v2

    .line 860
    :cond_4f
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    if-nez v2, :cond_5c

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-ne v2, v3, :cond_5c

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    throw v2

    .line 861
    :cond_5c
    const/4 v2, 0x0

    goto :goto_4e
.end method

.method public static main([Ljava/lang/String;)V
    .registers 5
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 26
    :goto_0
    :try_start_0
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/InputStream;)V

    .line 27
    .local v0, "parser":Lorg/apache/james/mime4j/field/address/parser/AddressListParser;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->parseLine()V

    .line 28
    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->rootNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v2

    check-cast v2, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->dump(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_0

    .line 29
    .end local v0    # "parser":Lorg/apache/james/mime4j/field/address/parser/AddressListParser;
    :catch_18
    move-exception v1

    .line 30
    .local v1, "x":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    return-void
.end method


# virtual methods
.method public ReInit(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 764
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 765
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 9
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 767
    :try_start_1
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, p1, p2, v3, v4}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_8} :catch_2c

    .line 768
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    .line 769
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 770
    iput v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 771
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->reset()V

    .line 772
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 773
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    const/16 v2, 0x16

    if-ge v1, v2, :cond_33

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 767
    .end local v1    # "i":I
    :catch_2c
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 774
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "i":I
    :cond_33
    const/4 v1, 0x0

    :goto_34
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v2, v2

    if-ge v1, v2, :cond_45

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 775
    :cond_45
    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .registers 6
    .param p1, "stream"    # Ljava/io/Reader;

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 788
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1, p1, v2, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    .line 789
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    .line 790
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 791
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 792
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->reset()V

    .line 793
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 794
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_20
    const/16 v1, 0x16

    if-ge v0, v1, :cond_2b

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 795
    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_3d

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 796
    :cond_3d
    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;)V
    .registers 5
    .param p1, "tm"    # Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    .prologue
    const/4 v2, -0x1

    .line 808
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    .line 809
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 810
    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 811
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->reset()V

    .line 812
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 813
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    const/16 v1, 0x16

    if-ge v0, v1, :cond_20

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 814
    :cond_20
    const/4 v0, 0x0

    :goto_21
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_32

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 815
    :cond_32
    return-void
.end method

.method public final addr_spec()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 497
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;-><init>(I)V

    .line 498
    .local v2, "jjtn000":Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;
    const/4 v0, 0x1

    .line 499
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 500
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 502
    :try_start_11
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->local_part()V

    .line 503
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 504
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->domain()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1c} :catch_27
    .catchall {:try_start_11 .. :try_end_1c} :catchall_37

    .line 520
    if-eqz v0, :cond_26

    .line 521
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 522
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 525
    :cond_26
    return-void

    .line 505
    :catch_27
    move-exception v1

    .line 506
    .local v1, "jjte000":Ljava/lang/Throwable;
    if-eqz v0, :cond_43

    .line 507
    :try_start_2a
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 508
    const/4 v0, 0x0

    .line 512
    :goto_30
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_49

    .line 513
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_37

    .line 520
    :catchall_37
    move-exception v3

    if-eqz v0, :cond_42

    .line 521
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 522
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_42
    throw v3

    .line 510
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_43
    :try_start_43
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    goto :goto_30

    .line 515
    :cond_49
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_50

    .line 516
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 518
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_50
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_37
.end method

.method public final address()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, -0x1

    .line 162
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTaddress;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTaddress;-><init>(I)V

    .line 163
    .local v2, "jjtn000":Lorg/apache/james/mime4j/field/address/parser/ASTaddress;
    const/4 v0, 0x1

    .line 164
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 165
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 167
    const v3, 0x7fffffff

    :try_start_14
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_1(I)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 168
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->addr_spec()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1d} :catch_44
    .catchall {:try_start_14 .. :try_end_1d} :catchall_54

    .line 211
    :goto_1d
    if-eqz v0, :cond_27

    .line 212
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 213
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 216
    :cond_27
    return-void

    .line 170
    :cond_28
    :try_start_28
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v4, :cond_60

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_30
    sparse-switch v3, :sswitch_data_a2

    .line 191
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x5

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 192
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 193
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_44} :catch_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_54

    .line 196
    :catch_44
    move-exception v1

    .line 197
    .local v1, "jjte000":Ljava/lang/Throwable;
    if-eqz v0, :cond_91

    .line 198
    :try_start_47
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 199
    const/4 v0, 0x0

    .line 203
    :goto_4d
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_97

    .line 204
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_54
    .catchall {:try_start_47 .. :try_end_54} :catchall_54

    .line 211
    :catchall_54
    move-exception v3

    if-eqz v0, :cond_5f

    .line 212
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 213
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_5f
    throw v3

    .line 170
    :cond_60
    :try_start_60
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_30

    .line 172
    :sswitch_63
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V

    goto :goto_1d

    .line 176
    :sswitch_67
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->phrase()V

    .line 177
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v4, :cond_86

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_72
    packed-switch v3, :pswitch_data_b0

    .line 185
    :pswitch_75
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x4

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 186
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 187
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3

    .line 177
    :cond_86
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_72

    .line 179
    :pswitch_89
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->group_body()V

    goto :goto_1d

    .line 182
    :pswitch_8d
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_90} :catch_44
    .catchall {:try_start_60 .. :try_end_90} :catchall_54

    goto :goto_1d

    .line 201
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_91
    :try_start_91
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    goto :goto_4d

    .line 206
    :cond_97
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_9e

    .line 207
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 209
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_9e
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_a1
    .catchall {:try_start_91 .. :try_end_a1} :catchall_54

    .line 170
    nop

    :sswitch_data_a2
    .sparse-switch
        0x6 -> :sswitch_63
        0xe -> :sswitch_67
        0x1f -> :sswitch_67
    .end sparse-switch

    .line 177
    :pswitch_data_b0
    .packed-switch 0x4
        :pswitch_89
        :pswitch_75
        :pswitch_8d
    .end packed-switch
.end method

.method public final address_list()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 101
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;

    invoke-direct {v2, v6}, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;-><init>(I)V

    .line 102
    .local v2, "jjtn000":Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;
    const/4 v0, 0x1

    .line 103
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 104
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 106
    :try_start_10
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v7, :cond_3f

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_18
    sparse-switch v3, :sswitch_data_94

    .line 113
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x1

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 118
    :goto_22
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v7, :cond_62

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2a
    packed-switch v3, :pswitch_data_a2

    .line 123
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x2

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_34} :catch_46
    .catchall {:try_start_10 .. :try_end_34} :catchall_56

    .line 153
    if-eqz v0, :cond_3e

    .line 154
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 155
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 158
    :cond_3e
    return-void

    .line 106
    :cond_3f
    :try_start_3f
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_18

    .line 110
    :sswitch_42
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->address()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_45} :catch_46
    .catchall {:try_start_3f .. :try_end_45} :catchall_56

    goto :goto_22

    .line 138
    :catch_46
    move-exception v1

    .line 139
    .local v1, "jjte000":Ljava/lang/Throwable;
    if-eqz v0, :cond_83

    .line 140
    :try_start_49
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 141
    const/4 v0, 0x0

    .line 145
    :goto_4f
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_89

    .line 146
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_56
    .catchall {:try_start_49 .. :try_end_56} :catchall_56

    .line 153
    :catchall_56
    move-exception v3

    if-eqz v0, :cond_61

    .line 154
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 155
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_61
    throw v3

    .line 118
    :cond_62
    :try_start_62
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_2a

    .line 126
    :pswitch_65
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 127
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v7, :cond_7c

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_71
    sparse-switch v3, :sswitch_data_a8

    .line 134
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x3

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    goto :goto_22

    .line 127
    :cond_7c
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_71

    .line 131
    :sswitch_7f
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->address()V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_82} :catch_46
    .catchall {:try_start_62 .. :try_end_82} :catchall_56

    goto :goto_22

    .line 143
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_83
    :try_start_83
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    goto :goto_4f

    .line 148
    :cond_89
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_90

    .line 149
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 151
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_90
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_93
    .catchall {:try_start_83 .. :try_end_93} :catchall_56

    .line 106
    nop

    :sswitch_data_94
    .sparse-switch
        0x6 -> :sswitch_42
        0xe -> :sswitch_42
        0x1f -> :sswitch_42
    .end sparse-switch

    .line 118
    :pswitch_data_a2
    .packed-switch 0x3
        :pswitch_65
    .end packed-switch

    .line 127
    :sswitch_data_a8
    .sparse-switch
        0x6 -> :sswitch_7f
        0xe -> :sswitch_7f
        0x1f -> :sswitch_7f
    .end sparse-switch
.end method

.method public final angle_addr()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    const/4 v6, 0x1

    .line 360
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;-><init>(I)V

    .line 361
    .local v2, "jjtn000":Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;
    const/4 v0, 0x1

    .line 362
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 363
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 365
    const/4 v3, 0x6

    :try_start_11
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 366
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3a

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_1d
    packed-switch v3, :pswitch_data_6e

    .line 371
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0xa

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 374
    :goto_28
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->addr_spec()V

    .line 375
    const/4 v3, 0x7

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_2f} :catch_41
    .catchall {:try_start_11 .. :try_end_2f} :catchall_51

    .line 391
    if-eqz v0, :cond_39

    .line 392
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 393
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 396
    :cond_39
    return-void

    .line 366
    :cond_3a
    :try_start_3a
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_1d

    .line 368
    :pswitch_3d
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->route()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_40} :catch_41
    .catchall {:try_start_3a .. :try_end_40} :catchall_51

    goto :goto_28

    .line 376
    :catch_41
    move-exception v1

    .line 377
    .local v1, "jjte000":Ljava/lang/Throwable;
    if-eqz v0, :cond_5d

    .line 378
    :try_start_44
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 379
    const/4 v0, 0x0

    .line 383
    :goto_4a
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_63

    .line 384
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_51
    .catchall {:try_start_44 .. :try_end_51} :catchall_51

    .line 391
    :catchall_51
    move-exception v3

    if-eqz v0, :cond_5c

    .line 392
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 393
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_5c
    throw v3

    .line 381
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_5d
    :try_start_5d
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    goto :goto_4a

    .line 386
    :cond_63
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_6a

    .line 387
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 389
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_6a
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_6d
    .catchall {:try_start_5d .. :try_end_6d} :catchall_51

    .line 366
    nop

    :pswitch_data_6e
    .packed-switch 0x8
        :pswitch_3d
    .end packed-switch
.end method

.method public final disable_tracing()V
    .registers 1

    .prologue
    .line 965
    return-void
.end method

.method public final domain()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 591
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;

    const/16 v3, 0xb

    invoke-direct {v1, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;-><init>(I)V

    .line 592
    .local v1, "jjtn000":Lorg/apache/james/mime4j/field/address/parser/ASTdomain;
    const/4 v0, 0x1

    .line 593
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 594
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 596
    :try_start_12
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_3b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_1a
    sparse-switch v3, :sswitch_data_aa

    .line 627
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x15

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 628
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 629
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_2f
    .catchall {:try_start_12 .. :try_end_2f} :catchall_2f

    .line 632
    :catchall_2f
    move-exception v3

    if-eqz v0, :cond_3a

    .line 633
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v1, v7}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 634
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_3a
    throw v3

    .line 596
    :cond_3b
    :try_start_3b
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_1a

    .line 598
    :sswitch_3e
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 601
    .local v2, "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_44
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_62

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_4c
    sparse-switch v3, :sswitch_data_b4

    .line 607
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x13

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4
    :try_end_57
    .catchall {:try_start_3b .. :try_end_57} :catchall_2f

    .line 632
    .end local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_57
    if-eqz v0, :cond_61

    .line 633
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1, v7}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 634
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 637
    :cond_61
    return-void

    .line 601
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_62
    :try_start_62
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_4c

    .line 610
    :sswitch_65
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_92

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_6d
    packed-switch v3, :pswitch_data_be

    .line 615
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x14

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 618
    :goto_78
    iget-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_9c

    .line 619
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    const-string v4, "Atoms in domain names must be separated by \'.\'"

    invoke-direct {v3, v4}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 610
    :cond_92
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_6d

    .line 612
    :pswitch_95
    const/16 v3, 0x9

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 613
    goto :goto_78

    .line 620
    :cond_9c
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    goto :goto_44

    .line 624
    .end local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :sswitch_a3
    const/16 v3, 0x12

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_a8
    .catchall {:try_start_62 .. :try_end_a8} :catchall_2f

    goto :goto_57

    .line 596
    nop

    :sswitch_data_aa
    .sparse-switch
        0xe -> :sswitch_3e
        0x12 -> :sswitch_a3
    .end sparse-switch

    .line 601
    :sswitch_data_b4
    .sparse-switch
        0x9 -> :sswitch_65
        0xe -> :sswitch_65
    .end sparse-switch

    .line 610
    :pswitch_data_be
    .packed-switch 0x9
        :pswitch_95
    .end packed-switch
.end method

.method public final enable_tracing()V
    .registers 1

    .prologue
    .line 962
    return-void
.end method

.method public generateParseException()Lorg/apache/james/mime4j/field/address/parser/ParseException;
    .registers 10

    .prologue
    const/16 v8, 0x22

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 923
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 924
    new-array v3, v8, [Z

    .line 925
    .local v3, "la1tokens":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v8, :cond_13

    .line 926
    aput-boolean v7, v3, v1

    .line 925
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 928
    :cond_13
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    if-ltz v4, :cond_1e

    .line 929
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    aput-boolean v6, v3, v4

    .line 930
    const/4 v4, -0x1

    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    .line 932
    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    const/16 v4, 0x16

    if-ge v1, v4, :cond_4e

    .line 933
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aget v4, v4, v1

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-ne v4, v5, :cond_4b

    .line 934
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2c
    const/16 v4, 0x20

    if-ge v2, v4, :cond_4b

    .line 935
    sget-object v4, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_0:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_3b

    .line 936
    aput-boolean v6, v3, v2

    .line 938
    :cond_3b
    sget-object v4, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_1:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_48

    .line 939
    add-int/lit8 v4, v2, 0x20

    aput-boolean v6, v3, v4

    .line 934
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 932
    .end local v2    # "j":I
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 944
    :cond_4e
    const/4 v1, 0x0

    :goto_4f
    if-ge v1, v8, :cond_67

    .line 945
    aget-boolean v4, v3, v1

    if-eqz v4, :cond_64

    .line 946
    new-array v4, v6, [I

    iput-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    .line 947
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    aput v1, v4, v7

    .line 948
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 944
    :cond_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 951
    :cond_67
    iput v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    .line 952
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan_token()V

    .line 953
    invoke-direct {p0, v7, v7}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_add_error_token(II)V

    .line 954
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v0, v4, [[I

    .line 955
    .local v0, "exptokseq":[[I
    const/4 v1, 0x0

    :goto_78
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_8f

    .line 956
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    check-cast v4, [I

    aput-object v4, v0, v1

    .line 955
    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    .line 958
    :cond_8f
    new-instance v4, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    sget-object v6, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v4, v5, v0, v6}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/address/parser/Token;[[I[Ljava/lang/String;)V

    return-object v4
.end method

.method public final getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;
    .registers 3

    .prologue
    .line 865
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 867
    :goto_c
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 868
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 869
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    return-object v0

    .line 866
    :cond_18
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_c
.end method

.method public final getToken(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 873
    iget-boolean v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    if-eqz v3, :cond_14

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 874
    .local v1, "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_6
    const/4 v0, 0x0

    .local v0, "i":I
    move-object v2, v1

    .end local v1    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    .local v2, "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_8
    if-ge v0, p1, :cond_20

    .line 875
    iget-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-eqz v3, :cond_17

    iget-object v1, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 874
    .end local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    .restart local v1    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_10
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    .end local v1    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    goto :goto_8

    .line 873
    .end local v0    # "i":I
    .end local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_14
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_6

    .line 876
    .restart local v0    # "i":I
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_17
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    iput-object v1, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    .end local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    .restart local v1    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    goto :goto_10

    .line 878
    .end local v1    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_20
    return-object v2
.end method

.method public final group_body()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 297
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;-><init>(I)V

    .line 298
    .local v2, "jjtn000":Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;
    const/4 v0, 0x1

    .line 299
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 300
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 302
    const/4 v3, 0x4

    :try_start_12
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 303
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_49

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_1d
    sparse-switch v3, :sswitch_data_9e

    .line 310
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x7

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 315
    :goto_27
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_6c

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2f
    packed-switch v3, :pswitch_data_ac

    .line 320
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x8

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 335
    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_3e} :catch_50
    .catchall {:try_start_12 .. :try_end_3e} :catchall_60

    .line 351
    if-eqz v0, :cond_48

    .line 352
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v7}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 353
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 356
    :cond_48
    return-void

    .line 303
    :cond_49
    :try_start_49
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_1d

    .line 307
    :sswitch_4c
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->mailbox()V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_4f} :catch_50
    .catchall {:try_start_49 .. :try_end_4f} :catchall_60

    goto :goto_27

    .line 336
    :catch_50
    move-exception v1

    .line 337
    .local v1, "jjte000":Ljava/lang/Throwable;
    if-eqz v0, :cond_8e

    .line 338
    :try_start_53
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 339
    const/4 v0, 0x0

    .line 343
    :goto_59
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_94

    .line 344
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_60
    .catchall {:try_start_53 .. :try_end_60} :catchall_60

    .line 351
    :catchall_60
    move-exception v3

    if-eqz v0, :cond_6b

    .line 352
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v7}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 353
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_6b
    throw v3

    .line 315
    :cond_6c
    :try_start_6c
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_2f

    .line 323
    :pswitch_6f
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 324
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_87

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_7b
    sparse-switch v3, :sswitch_data_b2

    .line 331
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x9

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    goto :goto_27

    .line 324
    :cond_87
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_7b

    .line 328
    :sswitch_8a
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->mailbox()V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_8d} :catch_50
    .catchall {:try_start_6c .. :try_end_8d} :catchall_60

    goto :goto_27

    .line 341
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_8e
    :try_start_8e
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    goto :goto_59

    .line 346
    :cond_94
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_9b

    .line 347
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 349
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_9b
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_9e
    .catchall {:try_start_8e .. :try_end_9e} :catchall_60

    .line 303
    :sswitch_data_9e
    .sparse-switch
        0x6 -> :sswitch_4c
        0xe -> :sswitch_4c
        0x1f -> :sswitch_4c
    .end sparse-switch

    .line 315
    :pswitch_data_ac
    .packed-switch 0x3
        :pswitch_6f
    .end packed-switch

    .line 324
    :sswitch_data_b2
    .sparse-switch
        0x6 -> :sswitch_8a
        0xe -> :sswitch_8a
        0x1f -> :sswitch_8a
    .end sparse-switch
.end method

.method jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    .registers 3
    .param p1, "n"    # Lorg/apache/james/mime4j/field/address/parser/Node;

    .prologue
    .line 68
    check-cast p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;

    .end local p1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->getToken(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 69
    return-void
.end method

.method jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    .registers 3
    .param p1, "n"    # Lorg/apache/james/mime4j/field/address/parser/Node;

    .prologue
    .line 64
    check-cast p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;

    .end local p1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->getToken(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->firstToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 65
    return-void
.end method

.method public final local_part()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x1f

    const/4 v6, -0x1

    .line 529
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ASTlocal_part;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTlocal_part;-><init>(I)V

    .line 530
    .local v1, "jjtn000":Lorg/apache/james/mime4j/field/address/parser/ASTlocal_part;
    const/4 v0, 0x1

    .line 531
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 532
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 534
    :try_start_14
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_3d

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_1c
    sparse-switch v3, :sswitch_data_da

    .line 542
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0xf

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 543
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 544
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_31
    .catchall {:try_start_14 .. :try_end_31} :catchall_31

    .line 582
    :catchall_31
    move-exception v3

    if-eqz v0, :cond_3c

    .line 583
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v1, v8}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 584
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_3c
    throw v3

    .line 534
    :cond_3d
    :try_start_3d
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_1c

    .line 536
    :sswitch_40
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 548
    .local v2, "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_46
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_6b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_4e
    sparse-switch v3, :sswitch_data_e4

    .line 555
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x10

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4
    :try_end_59
    .catchall {:try_start_3d .. :try_end_59} :catchall_31

    .line 582
    if-eqz v0, :cond_63

    .line 583
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1, v8}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 584
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 587
    :cond_63
    return-void

    .line 539
    .end local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :sswitch_64
    const/16 v3, 0x1f

    :try_start_66
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 540
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    goto :goto_46

    .line 548
    :cond_6b
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_4e

    .line 558
    :sswitch_6e
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_9f

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_76
    packed-switch v3, :pswitch_data_f2

    .line 563
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x11

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 566
    :goto_81
    iget v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    if-eq v3, v7, :cond_97

    iget-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_a9

    .line 567
    :cond_97
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    const-string v4, "Words in local part must be separated by \'.\'"

    invoke-direct {v3, v4}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 558
    :cond_9f
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_76

    .line 560
    :pswitch_a2
    const/16 v3, 0x9

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 561
    goto :goto_81

    .line 568
    :cond_a9
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_c6

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_b1
    sparse-switch v3, :sswitch_data_f8

    .line 576
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x12

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 577
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 578
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3

    .line 568
    :cond_c6
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_b1

    .line 570
    :sswitch_c9
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 571
    goto/16 :goto_46

    .line 573
    :sswitch_d1
    const/16 v3, 0x1f

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_d6
    .catchall {:try_start_66 .. :try_end_d6} :catchall_31

    move-result-object v2

    .line 574
    goto/16 :goto_46

    .line 534
    nop

    :sswitch_data_da
    .sparse-switch
        0xe -> :sswitch_40
        0x1f -> :sswitch_64
    .end sparse-switch

    .line 548
    :sswitch_data_e4
    .sparse-switch
        0x9 -> :sswitch_6e
        0xe -> :sswitch_6e
        0x1f -> :sswitch_6e
    .end sparse-switch

    .line 558
    :pswitch_data_f2
    .packed-switch 0x9
        :pswitch_a2
    .end packed-switch

    .line 568
    :sswitch_data_f8
    .sparse-switch
        0xe -> :sswitch_c9
        0x1f -> :sswitch_d1
    .end sparse-switch
.end method

.method public final mailbox()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, -0x1

    .line 220
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;-><init>(I)V

    .line 221
    .local v2, "jjtn000":Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;
    const/4 v0, 0x1

    .line 222
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 223
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 225
    const v3, 0x7fffffff

    :try_start_14
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_2(I)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 226
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->addr_spec()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1d} :catch_44
    .catchall {:try_start_14 .. :try_end_1d} :catchall_54

    .line 257
    :goto_1d
    if-eqz v0, :cond_27

    .line 258
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 259
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 262
    :cond_27
    return-void

    .line 228
    :cond_28
    :try_start_28
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v4, :cond_60

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_30
    sparse-switch v3, :sswitch_data_7c

    .line 237
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x6

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 238
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 239
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_44} :catch_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_54

    .line 242
    :catch_44
    move-exception v1

    .line 243
    .local v1, "jjte000":Ljava/lang/Throwable;
    if-eqz v0, :cond_6b

    .line 244
    :try_start_47
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 245
    const/4 v0, 0x0

    .line 249
    :goto_4d
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_71

    .line 250
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_54
    .catchall {:try_start_47 .. :try_end_54} :catchall_54

    .line 257
    :catchall_54
    move-exception v3

    if-eqz v0, :cond_5f

    .line 258
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 259
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_5f
    throw v3

    .line 228
    :cond_60
    :try_start_60
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_30

    .line 230
    :sswitch_63
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V

    goto :goto_1d

    .line 234
    :sswitch_67
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->name_addr()V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_6a} :catch_44
    .catchall {:try_start_60 .. :try_end_6a} :catchall_54

    goto :goto_1d

    .line 247
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_6b
    :try_start_6b
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    goto :goto_4d

    .line 252
    :cond_71
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_78

    .line 253
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 255
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_78
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_7b
    .catchall {:try_start_6b .. :try_end_7b} :catchall_54

    .line 228
    nop

    :sswitch_data_7c
    .sparse-switch
        0x6 -> :sswitch_63
        0xe -> :sswitch_67
        0x1f -> :sswitch_67
    .end sparse-switch
.end method

.method public final name_addr()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 266
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;-><init>(I)V

    .line 267
    .local v2, "jjtn000":Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;
    const/4 v0, 0x1

    .line 268
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 269
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 271
    :try_start_10
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->phrase()V

    .line 272
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_16} :catch_21
    .catchall {:try_start_10 .. :try_end_16} :catchall_31

    .line 288
    if-eqz v0, :cond_20

    .line 289
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 290
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 293
    :cond_20
    return-void

    .line 273
    :catch_21
    move-exception v1

    .line 274
    .local v1, "jjte000":Ljava/lang/Throwable;
    if-eqz v0, :cond_3d

    .line 275
    :try_start_24
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 276
    const/4 v0, 0x0

    .line 280
    :goto_2a
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_43

    .line 281
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_31

    .line 288
    :catchall_31
    move-exception v3

    if-eqz v0, :cond_3c

    .line 289
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 290
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_3c
    throw v3

    .line 278
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_3d
    :try_start_3d
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    goto :goto_2a

    .line 283
    :cond_43
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_4a

    .line 284
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 286
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_4a
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_4d
    .catchall {:try_start_3d .. :try_end_4d} :catchall_31
.end method

.method public parseAddress()Lorg/apache/james/mime4j/field/address/parser/ASTaddress;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 47
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->parseAddress0()V

    .line 48
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->rootNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddress;
    :try_end_b
    .catch Lorg/apache/james/mime4j/field/address/parser/TokenMgrError; {:try_start_0 .. :try_end_b} :catch_c

    return-object v1

    .line 49
    :catch_c
    move-exception v0

    .line 50
    .local v0, "tme":Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final parseAddress0()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->address()V

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 92
    return-void
.end method

.method public parseAddressList()Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 38
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->parseAddressList0()V

    .line 39
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->rootNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;
    :try_end_b
    .catch Lorg/apache/james/mime4j/field/address/parser/TokenMgrError; {:try_start_0 .. :try_end_b} :catch_c

    return-object v1

    .line 40
    :catch_c
    move-exception v0

    .line 41
    .local v0, "tme":Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final parseAddressList0()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->address_list()V

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 87
    return-void
.end method

.method public final parseLine()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->address_list()V

    .line 73
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v0

    :goto_c
    packed-switch v0, :pswitch_data_24

    .line 78
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v2, v0, v1

    .line 81
    :goto_16
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 82
    return-void

    .line 73
    :cond_1b
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_c

    .line 75
    :pswitch_1e
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_16

    .line 73
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method

.method public parseMailbox()Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->parseMailbox0()V

    .line 57
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->rootNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;
    :try_end_b
    .catch Lorg/apache/james/mime4j/field/address/parser/TokenMgrError; {:try_start_0 .. :try_end_b} :catch_c

    return-object v1

    .line 58
    :catch_c
    move-exception v0

    .line 59
    .local v0, "tme":Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final parseMailbox0()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->mailbox()V

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 97
    return-void
.end method

.method public final phrase()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 458
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;-><init>(I)V

    .line 459
    .local v1, "jjtn000":Lorg/apache/james/mime4j/field/address/parser/ASTphrase;
    const/4 v0, 0x1

    .line 460
    .local v0, "jjtc000":Z
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2, v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 461
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 465
    :sswitch_12
    :try_start_12
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v2, v3, :cond_3b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v2

    :goto_1a
    sparse-switch v2, :sswitch_data_6a

    .line 473
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v3, 0xd

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v2, v3

    .line 474
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 475
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v2
    :try_end_2f
    .catchall {:try_start_12 .. :try_end_2f} :catchall_2f

    .line 488
    :catchall_2f
    move-exception v2

    if-eqz v0, :cond_3a

    .line 489
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 490
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_3a
    throw v2

    .line 465
    :cond_3b
    :try_start_3b
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_1a

    .line 467
    :sswitch_3e
    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 477
    :goto_43
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v2, v3, :cond_67

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v2

    :goto_4b
    sparse-switch v2, :sswitch_data_74

    .line 483
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v3, 0xe

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v2, v3
    :try_end_56
    .catchall {:try_start_3b .. :try_end_56} :catchall_2f

    .line 488
    if-eqz v0, :cond_60

    .line 489
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2, v1, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 490
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 493
    :cond_60
    return-void

    .line 470
    :sswitch_61
    const/16 v2, 0x1f

    :try_start_63
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_43

    .line 477
    :cond_67
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
    :try_end_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_2f

    goto :goto_4b

    .line 465
    :sswitch_data_6a
    .sparse-switch
        0xe -> :sswitch_3e
        0x1f -> :sswitch_61
    .end sparse-switch

    .line 477
    :sswitch_data_74
    .sparse-switch
        0xe -> :sswitch_12
        0x1f -> :sswitch_12
    .end sparse-switch
.end method

.method public final route()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 400
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTroute;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTroute;-><init>(I)V

    .line 401
    .local v2, "jjtn000":Lorg/apache/james/mime4j/field/address/parser/ASTroute;
    const/4 v0, 0x1

    .line 402
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 403
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 405
    const/16 v3, 0x8

    :try_start_13
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 406
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->domain()V

    .line 409
    :goto_19
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_3b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_21
    sparse-switch v3, :sswitch_data_8e

    .line 415
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0xb

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 433
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_30} :catch_5e
    .catchall {:try_start_13 .. :try_end_30} :catchall_6e

    .line 449
    if-eqz v0, :cond_3a

    .line 450
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v7}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 451
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 454
    :cond_3a
    return-void

    .line 409
    :cond_3b
    :try_start_3b
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_21

    .line 428
    :pswitch_3e
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 420
    :sswitch_42
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_7a

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_4a
    packed-switch v3, :pswitch_data_98

    .line 425
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0xc

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 430
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 431
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->domain()V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_5d} :catch_5e
    .catchall {:try_start_3b .. :try_end_5d} :catchall_6e

    goto :goto_19

    .line 434
    :catch_5e
    move-exception v1

    .line 435
    .local v1, "jjte000":Ljava/lang/Throwable;
    if-eqz v0, :cond_7d

    .line 436
    :try_start_61
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 437
    const/4 v0, 0x0

    .line 441
    :goto_67
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_83

    .line 442
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_6e
    .catchall {:try_start_61 .. :try_end_6e} :catchall_6e

    .line 449
    :catchall_6e
    move-exception v3

    if-eqz v0, :cond_79

    .line 450
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v7}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 451
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_79
    throw v3

    .line 420
    :cond_7a
    :try_start_7a
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7c} :catch_5e
    .catchall {:try_start_7a .. :try_end_7c} :catchall_6e

    goto :goto_4a

    .line 439
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_7d
    :try_start_7d
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    goto :goto_67

    .line 444
    :cond_83
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_8a

    .line 445
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 447
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_8a
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_8d
    .catchall {:try_start_7d .. :try_end_8d} :catchall_6e

    .line 409
    nop

    :sswitch_data_8e
    .sparse-switch
        0x3 -> :sswitch_42
        0x8 -> :sswitch_42
    .end sparse-switch

    .line 420
    :pswitch_data_98
    .packed-switch 0x3
        :pswitch_3e
    .end packed-switch
.end method
