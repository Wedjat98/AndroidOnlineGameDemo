.class public final Lcom/squareup/okhttp/MediaType;
.super Ljava/lang/Object;
.source "MediaType.java"


# static fields
.field private static final PARAMETER:Ljava/util/regex/Pattern;

.field private static final QUOTED:Ljava/lang/String; = "\"([^\"]*)\""

.field private static final TOKEN:Ljava/lang/String; = "([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)"

.field private static final TYPE_SUBTYPE:Ljava/util/regex/Pattern;


# instance fields
.field private final charset:Ljava/lang/String;

.field private final mediaType:Ljava/lang/String;

.field private final subtype:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-string v0, "([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/MediaType;->TYPE_SUBTYPE:Ljava/util/regex/Pattern;

    .line 31
    const-string v0, ";\\s*(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)|\"([^\"]*)\"))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/MediaType;->PARAMETER:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "mediaType"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "subtype"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/squareup/okhttp/MediaType;->mediaType:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/squareup/okhttp/MediaType;->type:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/squareup/okhttp/MediaType;->subtype:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/squareup/okhttp/MediaType;->charset:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;
    .registers 14
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x2

    .line 51
    sget-object v9, Lcom/squareup/okhttp/MediaType;->TYPE_SUBTYPE:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 52
    .local v7, "typeSubtype":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v9

    if-nez v9, :cond_10

    .line 73
    :cond_f
    :goto_f
    return-object v8

    .line 53
    :cond_10
    invoke-virtual {v7, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, "type":Ljava/lang/String;
    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "subtype":Ljava/lang/String;
    const/4 v0, 0x0

    .line 57
    .local v0, "charset":Ljava/lang/String;
    sget-object v9, Lcom/squareup/okhttp/MediaType;->PARAMETER:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 58
    .local v3, "parameter":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    .local v4, "s":I
    :goto_2f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_88

    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v4, v9}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 60
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 62
    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_50

    const-string v9, "charset"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_55

    .line 58
    :cond_50
    :goto_50
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    goto :goto_2f

    .line 64
    :cond_55
    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_80

    .line 65
    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "charsetParameter":Ljava/lang/String;
    :goto_5f
    if-eqz v0, :cond_86

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_86

    .line 68
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Multiple different charsets: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 65
    .end local v1    # "charsetParameter":Ljava/lang/String;
    :cond_80
    const/4 v9, 0x3

    .line 66
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5f

    .line 70
    .restart local v1    # "charsetParameter":Ljava/lang/String;
    :cond_86
    move-object v0, v1

    goto :goto_50

    .line 73
    .end local v1    # "charsetParameter":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    :cond_88
    new-instance v8, Lcom/squareup/okhttp/MediaType;

    invoke-direct {v8, p0, v6, v5, v0}, Lcom/squareup/okhttp/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method


# virtual methods
.method public charset()Ljava/nio/charset/Charset;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/squareup/okhttp/MediaType;->charset:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/squareup/okhttp/MediaType;->charset:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .registers 3
    .param p1, "defaultValue"    # Ljava/nio/charset/Charset;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/squareup/okhttp/MediaType;->charset:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/squareup/okhttp/MediaType;->charset:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    .end local p1    # "defaultValue":Ljava/nio/charset/Charset;
    :cond_a
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 117
    instance-of v0, p1, Lcom/squareup/okhttp/MediaType;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/squareup/okhttp/MediaType;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/squareup/okhttp/MediaType;->mediaType:Ljava/lang/String;

    iget-object v1, p0, Lcom/squareup/okhttp/MediaType;->mediaType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/squareup/okhttp/MediaType;->mediaType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public subtype()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/squareup/okhttp/MediaType;->subtype:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/squareup/okhttp/MediaType;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public type()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/squareup/okhttp/MediaType;->type:Ljava/lang/String;

    return-object v0
.end method
