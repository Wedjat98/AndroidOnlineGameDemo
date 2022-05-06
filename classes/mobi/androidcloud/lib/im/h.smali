.class public Lmobi/androidcloud/lib/im/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ht:Ljava/lang/String;

.field private final hu:Lmobi/androidcloud/lib/im/j;


# direct methods
.method public constructor <init>(Lmobi/androidcloud/lib/im/j;)V
    .registers 5

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lmobi/androidcloud/lib/im/h;->hu:Lmobi/androidcloud/lib/im/j;

    .line 24
    invoke-virtual {p1}, Lmobi/androidcloud/lib/im/j;->getMsgId()I

    move-result v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MediaSender "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/androidcloud/lib/im/h;->ht:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private iB()Lmobi/androidcloud/lib/im/n$a;
    .registers 6

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 36
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_5
    const/4 v2, 0x3

    if-ge v1, v2, :cond_5b

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobi/androidcloud/lib/im/h;->ht:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Getting URL - attempt #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    sget-object v0, Lmobi/androidcloud/lib/im/n;->hI:Lmobi/androidcloud/lib/im/n;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/im/n;->iI()Lmobi/androidcloud/lib/im/n$a;

    move-result-object v0

    .line 40
    if-nez v0, :cond_47

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmobi/androidcloud/lib/im/h;->ht:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Getting URL failed on attempt #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requesting another URL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    sget-object v2, Lmobi/androidcloud/lib/im/n;->hI:Lmobi/androidcloud/lib/im/n;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lmobi/androidcloud/lib/im/n;->ak(I)V

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 46
    :cond_47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmobi/androidcloud/lib/im/h;->ht:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Getting URL succeeded on attempt #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    :cond_5b
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Lmobi/androidcloud/lib/wire/control/L$a;
    .registers 11

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 138
    move v4, v3

    :goto_3
    const/4 v1, 0x3

    if-ge v4, v1, :cond_d6

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobi/androidcloud/lib/im/h;->ht:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Handling pending msg.. Waiting for URL #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    invoke-direct {p0}, Lmobi/androidcloud/lib/im/h;->iB()Lmobi/androidcloud/lib/im/n$a;

    move-result-object v5

    .line 144
    if-nez v5, :cond_33

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobi/androidcloud/lib/im/h;->ht:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Failed to send media chat due to no URL."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v1, p0, Lmobi/androidcloud/lib/im/h;->hu:Lmobi/androidcloud/lib/im/j;

    .line 191
    :goto_32
    return-object v0

    .line 152
    :cond_33
    iget-object v1, p0, Lmobi/androidcloud/lib/im/h;->hu:Lmobi/androidcloud/lib/im/j;

    invoke-virtual {v1}, Lmobi/androidcloud/lib/im/j;->iE()V

    move v2, v3

    move v1, v3

    .line 153
    :goto_3a
    const/4 v6, 0x5

    if-ge v2, v6, :cond_8f

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lmobi/androidcloud/lib/im/h;->ht:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "Attempting to upload audio msg to s3"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :try_start_4d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lmobi/androidcloud/lib/im/h;->ht:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "path to send: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_66} :catch_94

    .line 163
    :goto_66
    iget-object v1, v5, Lmobi/androidcloud/lib/im/n$a;->hK:Lmobi/androidcloud/lib/wire/control/L$a;

    iget-object v1, v1, Lmobi/androidcloud/lib/wire/control/L$a;->la:Ljava/lang/String;

    iget-boolean v6, v5, Lmobi/androidcloud/lib/im/n$a;->hL:Z

    iget-object v7, p0, Lmobi/androidcloud/lib/im/h;->hu:Lmobi/androidcloud/lib/im/j;

    invoke-static {p1, v1, v6, v7, p2}, Lmobi/androidcloud/lib/aws/b;->a(Ljava/lang/String;Ljava/lang/String;ZLmobi/androidcloud/lib/im/j;Z)Z

    move-result v1

    .line 167
    if-eqz v1, :cond_99

    .line 168
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lmobi/androidcloud/lib/im/h;->ht:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Upload succeeded on attempt #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    invoke-static {}, Lmobi/androidcloud/lib/net/a;->iK()Lmobi/androidcloud/lib/net/a;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/androidcloud/lib/net/a;->iY()V

    .line 180
    :cond_8f
    if-eqz v1, :cond_bb

    .line 182
    iget-object v0, v5, Lmobi/androidcloud/lib/im/n$a;->hK:Lmobi/androidcloud/lib/wire/control/L$a;

    goto :goto_32

    .line 160
    :catch_94
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_66

    .line 174
    :cond_99
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lmobi/androidcloud/lib/im/h;->ht:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Upload failed on attempt #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Retrying in 1 second"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const/16 v6, 0x3e8

    invoke-static {v6}, Lcom/google/protobuf/d;->i(I)V

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 184
    :cond_bb
    iget-object v1, p0, Lmobi/androidcloud/lib/im/h;->hu:Lmobi/androidcloud/lib/im/j;

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobi/androidcloud/lib/im/h;->ht:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Upload failed with URL #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_3

    .line 189
    :cond_d6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobi/androidcloud/lib/im/h;->ht:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "done"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_32
.end method

.method public run()V
    .registers 11

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmobi/androidcloud/lib/im/h;->hu:Lmobi/androidcloud/lib/im/j;

    invoke-virtual {v2}, Lmobi/androidcloud/lib/im/j;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v1, p0, Lmobi/androidcloud/lib/im/h;->hu:Lmobi/androidcloud/lib/im/j;

    .line 66
    iget-object v1, p0, Lmobi/androidcloud/lib/im/h;->hu:Lmobi/androidcloud/lib/im/j;

    invoke-virtual {v1}, Lmobi/androidcloud/lib/im/j;->iC()Ljava/lang/String;

    move-result-object v3

    .line 67
    iget-object v1, p0, Lmobi/androidcloud/lib/im/h;->hu:Lmobi/androidcloud/lib/im/j;

    invoke-virtual {v1}, Lmobi/androidcloud/lib/im/j;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 74
    if-eqz v3, :cond_a5

    .line 75
    :try_start_22
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_62

    .line 76
    :try_start_27
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Size of Preview is... "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_35} :catch_9a

    move-object v2, v1

    .line 79
    :goto_36
    :try_start_36
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3b} :catch_9e

    .line 81
    :try_start_3b
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Size of Actual file is... "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_49} :catch_a1

    move-object v8, v1

    move-object v1, v2

    .line 86
    :goto_4b
    if-eqz v3, :cond_a3

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, ".............................Uploading Preview of Size "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0, v3, v0}, Lmobi/androidcloud/lib/im/h;->a(Ljava/lang/String;Z)Lmobi/androidcloud/lib/wire/control/L$a;

    move-result-object v2

    .line 92
    if-nez v2, :cond_68

    .line 134
    :cond_61
    :goto_61
    return-void

    :catch_62
    move-exception v1

    move-object v1, v5

    move-object v2, v5

    :goto_65
    move-object v8, v1

    move-object v1, v2

    goto :goto_4b

    .line 96
    :cond_68
    iget-object v3, v2, Lmobi/androidcloud/lib/wire/control/L$a;->kZ:Ljava/lang/String;

    .line 97
    iget-object v5, v2, Lmobi/androidcloud/lib/wire/control/L$a;->lb:Ljava/lang/String;

    .line 98
    :goto_6c
    const/4 v2, 0x1

    invoke-virtual {p0, v4, v2}, Lmobi/androidcloud/lib/im/h;->a(Ljava/lang/String;Z)Lmobi/androidcloud/lib/wire/control/L$a;

    move-result-object v4

    .line 112
    if-eqz v4, :cond_61

    .line 116
    iget-object v2, v4, Lmobi/androidcloud/lib/wire/control/L$a;->kZ:Ljava/lang/String;

    .line 117
    iget-object v4, v4, Lmobi/androidcloud/lib/wire/control/L$a;->lb:Ljava/lang/String;

    .line 119
    if-nez v1, :cond_94

    .line 128
    :goto_79
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "message: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lmobi/androidcloud/lib/im/h;->hu:Lmobi/androidcloud/lib/im/j;

    invoke-virtual {v6}, Lmobi/androidcloud/lib/im/j;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v1, p0, Lmobi/androidcloud/lib/im/h;->hu:Lmobi/androidcloud/lib/im/j;

    int-to-long v6, v0

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual/range {v1 .. v9}, Lmobi/androidcloud/lib/im/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_61

    .line 126
    :cond_94
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_79

    :catch_9a
    move-exception v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_65

    :catch_9e
    move-exception v1

    move-object v1, v5

    goto :goto_65

    :catch_a1
    move-exception v6

    goto :goto_65

    :cond_a3
    move-object v3, v5

    goto :goto_6c

    :cond_a5
    move-object v2, v5

    goto :goto_36
.end method
