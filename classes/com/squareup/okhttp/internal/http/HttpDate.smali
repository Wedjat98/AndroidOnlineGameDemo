.class public final Lcom/squareup/okhttp/internal/http/HttpDate;
.super Ljava/lang/Object;
.source "HttpDate.java"


# static fields
.field private static final BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

.field private static final BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

.field private static final GMT:Ljava/util/TimeZone;

.field private static final STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 31
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/http/HttpDate;->GMT:Ljava/util/TimeZone;

    .line 37
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpDate$1;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/HttpDate$1;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    .line 49
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "EEE MMM d HH:mm:ss yyyy"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "EEE, dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "EEE, dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "EEE, dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EEE dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EEE dd MMM yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EEE dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EEE dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "EEE dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "EEE,dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "EEE,dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "EEE, dd-MM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "EEE MMM d yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    sput-object v0, Lcom/squareup/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/squareup/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/text/DateFormat;

    sput-object v0, Lcom/squareup/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method

.method static synthetic access$000()Ljava/util/TimeZone;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/squareup/okhttp/internal/http/HttpDate;->GMT:Ljava/util/TimeZone;

    return-object v0
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # Ljava/util/Date;

    .prologue
    .line 114
    sget-object v0, Lcom/squareup/okhttp/internal/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/Date;
    .registers 10
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_a

    move-object v4, v6

    .line 109
    :cond_9
    :goto_9
    return-object v4

    .line 80
    :cond_a
    new-instance v3, Ljava/text/ParsePosition;

    invoke-direct {v3, v7}, Ljava/text/ParsePosition;-><init>(I)V

    .line 81
    .local v3, "position":Ljava/text/ParsePosition;
    sget-object v5, Lcom/squareup/okhttp/internal/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/DateFormat;

    invoke-virtual {v5, p0, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v4

    .line 82
    .local v4, "result":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v5, v7, :cond_9

    .line 87
    sget-object v7, Lcom/squareup/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    monitor-enter v7

    .line 88
    const/4 v2, 0x0

    .local v2, "i":I
    :try_start_29
    sget-object v5, Lcom/squareup/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    array-length v0, v5

    .local v0, "count":I
    :goto_2c
    if-ge v2, v0, :cond_5e

    .line 89
    sget-object v5, Lcom/squareup/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    aget-object v1, v5, v2

    .line 90
    .local v1, "format":Ljava/text/DateFormat;
    if-nez v1, :cond_48

    .line 91
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1    # "format":Ljava/text/DateFormat;
    sget-object v5, Lcom/squareup/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    aget-object v5, v5, v2

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v5, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 94
    .restart local v1    # "format":Ljava/text/DateFormat;
    sget-object v5, Lcom/squareup/okhttp/internal/http/HttpDate;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 95
    sget-object v5, Lcom/squareup/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    aput-object v1, v5, v2

    .line 97
    :cond_48
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 98
    invoke-virtual {v1, p0, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v4

    .line 99
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    if-eqz v5, :cond_5b

    .line 105
    monitor-exit v7

    goto :goto_9

    .line 108
    .end local v0    # "count":I
    .end local v1    # "format":Ljava/text/DateFormat;
    :catchall_58
    move-exception v5

    monitor-exit v7
    :try_end_5a
    .catchall {:try_start_29 .. :try_end_5a} :catchall_58

    throw v5

    .line 88
    .restart local v0    # "count":I
    .restart local v1    # "format":Ljava/text/DateFormat;
    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 108
    .end local v1    # "format":Ljava/text/DateFormat;
    :cond_5e
    :try_start_5e
    monitor-exit v7
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_58

    move-object v4, v6

    .line 109
    goto :goto_9
.end method
