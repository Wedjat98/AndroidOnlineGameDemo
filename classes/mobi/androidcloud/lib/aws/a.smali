.class final Lmobi/androidcloud/lib/aws/a;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private file:Ljava/io/File;

.field private final ha:Lmobi/androidcloud/lib/im/j;

.field private hb:J

.field private hc:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lmobi/androidcloud/lib/im/j;Z)V
    .registers 7

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 31
    if-nez p1, :cond_d

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_d
    iput-object p1, p0, Lmobi/androidcloud/lib/aws/a;->file:Ljava/io/File;

    .line 36
    iput-object p3, p0, Lmobi/androidcloud/lib/aws/a;->ha:Lmobi/androidcloud/lib/im/j;

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmobi/androidcloud/lib/aws/a;->hb:J

    .line 38
    iput-boolean p4, p0, Lmobi/androidcloud/lib/aws/a;->hc:Z

    .line 39
    invoke-virtual {p0, p2}, Lmobi/androidcloud/lib/aws/a;->setContentType(Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 97
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 54
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lmobi/androidcloud/lib/aws/a;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lmobi/androidcloud/lib/aws/a;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public isRepeatable()Z
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 8

    .prologue
    .line 59
    if-nez p1, :cond_a

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_a
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lmobi/androidcloud/lib/aws/a;->file:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 66
    const/16 v0, 0x1000

    :try_start_13
    new-array v0, v0, [B

    .line 68
    :cond_15
    :goto_15
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_59

    .line 70
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 71
    iget-wide v4, p0, Lmobi/androidcloud/lib/aws/a;->hb:J

    int-to-long v2, v2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmobi/androidcloud/lib/aws/a;->hb:J

    .line 73
    iget-wide v2, p0, Lmobi/androidcloud/lib/aws/a;->hb:J

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    invoke-virtual {p0}, Lmobi/androidcloud/lib/aws/a;->getContentLength()J

    move-result-wide v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 77
    iget-object v3, p0, Lmobi/androidcloud/lib/aws/a;->ha:Lmobi/androidcloud/lib/im/j;

    if-eqz v3, :cond_15

    rem-int/lit8 v3, v2, 0xa

    if-nez v3, :cond_15

    iget-boolean v3, p0, Lmobi/androidcloud/lib/aws/a;->hc:Z

    if-eqz v3, :cond_15

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Transfered Bytes = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lmobi/androidcloud/lib/aws/a;->hb:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " % "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_53
    .catchall {:try_start_13 .. :try_end_53} :catchall_54

    goto :goto_15

    .line 85
    :catchall_54
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    .line 81
    :cond_59
    :try_start_59
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_54

    .line 85
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 86
    return-void
.end method
