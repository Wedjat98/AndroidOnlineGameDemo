.class public final Lcom/qiniu/android/dns/DnsManager;
.super Ljava/lang/Object;
.source "DnsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/dns/DnsManager$1;,
        Lcom/qiniu/android/dns/DnsManager$ShuffleIps;
    }
.end annotation


# instance fields
.field private final cache:Lcom/qiniu/android/dns/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qiniu/android/dns/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "[",
            "Lcom/qiniu/android/dns/Record;",
            ">;"
        }
    .end annotation
.end field

.field private final hosts:Lcom/qiniu/android/dns/local/Hosts;

.field private volatile index:I

.field private volatile info:Lcom/qiniu/android/dns/NetworkInfo;

.field private final resolvers:[Lcom/qiniu/android/dns/IResolver;

.field private final sorter:Lcom/qiniu/android/dns/IpSorter;


# direct methods
.method public constructor <init>(Lcom/qiniu/android/dns/NetworkInfo;[Lcom/qiniu/android/dns/IResolver;)V
    .registers 4
    .param p1, "info"    # Lcom/qiniu/android/dns/NetworkInfo;
    .param p2, "resolvers"    # [Lcom/qiniu/android/dns/IResolver;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/qiniu/android/dns/DnsManager;-><init>(Lcom/qiniu/android/dns/NetworkInfo;[Lcom/qiniu/android/dns/IResolver;Lcom/qiniu/android/dns/IpSorter;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/dns/NetworkInfo;[Lcom/qiniu/android/dns/IResolver;Lcom/qiniu/android/dns/IpSorter;)V
    .registers 6
    .param p1, "info"    # Lcom/qiniu/android/dns/NetworkInfo;
    .param p2, "resolvers"    # [Lcom/qiniu/android/dns/IResolver;
    .param p3, "sorter"    # Lcom/qiniu/android/dns/IpSorter;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/qiniu/android/dns/local/Hosts;

    invoke-direct {v0}, Lcom/qiniu/android/dns/local/Hosts;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->hosts:Lcom/qiniu/android/dns/local/Hosts;

    .line 23
    iput-object v1, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    .line 40
    if-nez p1, :cond_14

    sget-object p1, Lcom/qiniu/android/dns/NetworkInfo;->normal:Lcom/qiniu/android/dns/NetworkInfo;

    .end local p1    # "info":Lcom/qiniu/android/dns/NetworkInfo;
    :cond_14
    iput-object p1, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    .line 41
    invoke-virtual {p2}, [Lcom/qiniu/android/dns/IResolver;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qiniu/android/dns/IResolver;

    iput-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    .line 42
    new-instance v0, Lcom/qiniu/android/dns/util/LruCache;

    invoke-direct {v0}, Lcom/qiniu/android/dns/util/LruCache;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    .line 43
    if-nez p3, :cond_2c

    new-instance p3, Lcom/qiniu/android/dns/DnsManager$ShuffleIps;

    .end local p3    # "sorter":Lcom/qiniu/android/dns/IpSorter;
    invoke-direct {p3, v1}, Lcom/qiniu/android/dns/DnsManager$ShuffleIps;-><init>(Lcom/qiniu/android/dns/DnsManager$1;)V

    :cond_2c
    iput-object p3, p0, Lcom/qiniu/android/dns/DnsManager;->sorter:Lcom/qiniu/android/dns/IpSorter;

    .line 44
    return-void
.end method

.method private clearCache()V
    .registers 3

    .prologue
    .line 235
    iget-object v1, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    monitor-enter v1

    .line 236
    :try_start_3
    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    invoke-virtual {v0}, Lcom/qiniu/android/dns/util/LruCache;->clear()V

    .line 237
    monitor-exit v1

    .line 238
    return-void

    .line 237
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private queryInternal(Lcom/qiniu/android/dns/Domain;)[Ljava/lang/String;
    .registers 17
    .param p1, "domain"    # Lcom/qiniu/android/dns/Domain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    const/4 v9, 0x0

    .line 137
    .local v9, "records":[Lcom/qiniu/android/dns/Record;
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/qiniu/android/dns/Domain;->hostsFirst:Z

    if-eqz v12, :cond_17

    .line 138
    iget-object v12, p0, Lcom/qiniu/android/dns/DnsManager;->hosts:Lcom/qiniu/android/dns/local/Hosts;

    iget-object v13, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/qiniu/android/dns/local/Hosts;->query(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Ljava/lang/String;

    move-result-object v10

    .line 139
    .local v10, "ret":[Ljava/lang/String;
    if-eqz v10, :cond_17

    array-length v12, v10

    if-eqz v12, :cond_17

    .line 209
    .end local v10    # "ret":[Ljava/lang/String;
    :goto_16
    return-object v10

    .line 143
    :cond_17
    iget-object v13, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    monitor-enter v13

    .line 144
    :try_start_1a
    iget-object v12, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    sget-object v14, Lcom/qiniu/android/dns/NetworkInfo;->normal:Lcom/qiniu/android/dns/NetworkInfo;

    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8d

    invoke-static {}, Lcom/qiniu/android/dns/Network;->isNetworkChanged()Z

    move-result v12

    if-eqz v12, :cond_8d

    .line 145
    iget-object v12, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    invoke-virtual {v12}, Lcom/qiniu/android/dns/util/LruCache;->clear()V

    .line 146
    iget-object v14, p0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    monitor-enter v14
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_8a

    .line 147
    const/4 v12, 0x0

    :try_start_33
    iput v12, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    .line 148
    monitor-exit v14
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_87

    .line 159
    :cond_36
    :goto_36
    :try_start_36
    monitor-exit v13
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_8a

    .line 161
    const/4 v7, 0x0

    .line 162
    .local v7, "lastE":Ljava/io/IOException;
    iget v3, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    .line 163
    .local v3, "firstOk":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3b
    iget-object v12, p0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    array-length v12, v12

    if-ge v4, v12, :cond_bd

    .line 164
    add-int v12, v3, v4

    iget-object v13, p0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    array-length v13, v13

    rem-int v8, v12, v13

    .line 165
    .local v8, "pos":I
    iget-object v1, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    .line 166
    .local v1, "before":Lcom/qiniu/android/dns/NetworkInfo;
    invoke-static {}, Lcom/qiniu/android/dns/Network;->getIp()Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, "ip":Ljava/lang/String;
    :try_start_4d
    iget-object v12, p0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    aget-object v12, v12, v8

    iget-object v13, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    move-object/from16 v0, p1

    invoke-interface {v12, v0, v13}, Lcom/qiniu/android/dns/IResolver;->resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;
    :try_end_58
    .catch Lcom/qiniu/android/dns/http/DomainNotOwn; {:try_start_4d .. :try_end_58} :catch_b2
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_58} :catch_b4

    move-result-object v9

    .line 175
    :goto_59
    invoke-static {}, Lcom/qiniu/android/dns/Network;->getIp()Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, "ip2":Ljava/lang/String;
    iget-object v12, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    if-ne v12, v1, :cond_bd

    if-eqz v9, :cond_66

    array-length v12, v9

    if-nez v12, :cond_bd

    :cond_66
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_bd

    .line 177
    iget-object v13, p0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    monitor-enter v13

    .line 178
    :try_start_6f
    iget v12, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    if-ne v12, v3, :cond_83

    .line 179
    iget v12, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    .line 180
    iget v12, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    iget-object v14, p0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    array-length v14, v14

    if-ne v12, v14, :cond_83

    .line 181
    const/4 v12, 0x0

    iput v12, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    .line 184
    :cond_83
    monitor-exit v13
    :try_end_84
    .catchall {:try_start_6f .. :try_end_84} :catchall_ba

    .line 163
    .end local v6    # "ip2":Ljava/lang/String;
    :goto_84
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 148
    .end local v1    # "before":Lcom/qiniu/android/dns/NetworkInfo;
    .end local v3    # "firstOk":I
    .end local v4    # "i":I
    .end local v5    # "ip":Ljava/lang/String;
    .end local v7    # "lastE":Ljava/io/IOException;
    .end local v8    # "pos":I
    :catchall_87
    move-exception v12

    :try_start_88
    monitor-exit v14
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    :try_start_89
    throw v12

    .line 159
    :catchall_8a
    move-exception v12

    monitor-exit v13
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_8a

    throw v12

    .line 150
    :cond_8d
    :try_start_8d
    iget-object v12, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-virtual {v12, v14}, Lcom/qiniu/android/dns/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, [Lcom/qiniu/android/dns/Record;

    move-object v9, v0

    .line 151
    if-eqz v9, :cond_36

    array-length v12, v9

    if-eqz v12, :cond_36

    .line 152
    const/4 v12, 0x0

    aget-object v12, v9, v12

    invoke-virtual {v12}, Lcom/qiniu/android/dns/Record;->isExpired()Z

    move-result v12

    if-nez v12, :cond_b0

    .line 153
    invoke-static {v9}, Lcom/qiniu/android/dns/DnsManager;->records2Ip([Lcom/qiniu/android/dns/Record;)[Ljava/lang/String;

    move-result-object v10

    monitor-exit v13
    :try_end_ae
    .catchall {:try_start_8d .. :try_end_ae} :catchall_8a

    goto/16 :goto_16

    .line 155
    :cond_b0
    const/4 v9, 0x0

    goto :goto_36

    .line 169
    .restart local v1    # "before":Lcom/qiniu/android/dns/NetworkInfo;
    .restart local v3    # "firstOk":I
    .restart local v4    # "i":I
    .restart local v5    # "ip":Ljava/lang/String;
    .restart local v7    # "lastE":Ljava/io/IOException;
    .restart local v8    # "pos":I
    :catch_b2
    move-exception v2

    .line 170
    .local v2, "e":Lcom/qiniu/android/dns/http/DomainNotOwn;
    goto :goto_84

    .line 171
    .end local v2    # "e":Lcom/qiniu/android/dns/http/DomainNotOwn;
    :catch_b4
    move-exception v2

    .line 172
    .local v2, "e":Ljava/io/IOException;
    move-object v7, v2

    .line 173
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_59

    .line 184
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v6    # "ip2":Ljava/lang/String;
    :catchall_ba
    move-exception v12

    :try_start_bb
    monitor-exit v13
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    throw v12

    .line 190
    .end local v1    # "before":Lcom/qiniu/android/dns/NetworkInfo;
    .end local v5    # "ip":Ljava/lang/String;
    .end local v6    # "ip2":Ljava/lang/String;
    .end local v8    # "pos":I
    :cond_bd
    if-eqz v9, :cond_c2

    array-length v12, v9

    if-nez v12, :cond_e7

    .line 191
    :cond_c2
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/qiniu/android/dns/Domain;->hostsFirst:Z

    if-nez v12, :cond_da

    .line 192
    iget-object v12, p0, Lcom/qiniu/android/dns/DnsManager;->hosts:Lcom/qiniu/android/dns/local/Hosts;

    iget-object v13, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/qiniu/android/dns/local/Hosts;->query(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Ljava/lang/String;

    move-result-object v11

    .line 193
    .local v11, "rs":[Ljava/lang/String;
    if-eqz v11, :cond_da

    array-length v12, v11

    if-eqz v12, :cond_da

    move-object v10, v11

    .line 194
    goto/16 :goto_16

    .line 197
    .end local v11    # "rs":[Ljava/lang/String;
    :cond_da
    if-eqz v7, :cond_dd

    .line 198
    throw v7

    .line 200
    :cond_dd
    new-instance v12, Ljava/net/UnknownHostException;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 202
    :cond_e7
    invoke-static {v9}, Lcom/qiniu/android/dns/DnsManager;->trimCname([Lcom/qiniu/android/dns/Record;)[Lcom/qiniu/android/dns/Record;

    move-result-object v9

    .line 203
    array-length v12, v9

    if-nez v12, :cond_f6

    .line 204
    new-instance v12, Ljava/net/UnknownHostException;

    const-string v13, "no A records"

    invoke-direct {v12, v13}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 206
    :cond_f6
    iget-object v13, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    monitor-enter v13

    .line 207
    :try_start_f9
    iget-object v12, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-virtual {v12, v14, v9}, Lcom/qiniu/android/dns/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/qiniu/android/dns/util/LruCache;

    .line 208
    monitor-exit v13
    :try_end_103
    .catchall {:try_start_f9 .. :try_end_103} :catchall_109

    .line 209
    invoke-static {v9}, Lcom/qiniu/android/dns/DnsManager;->records2Ip([Lcom/qiniu/android/dns/Record;)[Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_16

    .line 208
    :catchall_109
    move-exception v12

    :try_start_10a
    monitor-exit v13
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_109

    throw v12
.end method

.method private static records2Ip([Lcom/qiniu/android/dns/Record;)[Ljava/lang/String;
    .registers 7
    .param p0, "records"    # [Lcom/qiniu/android/dns/Record;

    .prologue
    const/4 v2, 0x0

    .line 57
    if-eqz p0, :cond_6

    array-length v3, p0

    if-nez v3, :cond_7

    .line 67
    :cond_6
    :goto_6
    return-object v2

    .line 60
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    array-length v3, p0

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .local v0, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v4, p0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v4, :cond_1b

    aget-object v1, p0, v3

    .line 62
    .local v1, "r":Lcom/qiniu/android/dns/Record;
    iget-object v5, v1, Lcom/qiniu/android/dns/Record;->value:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 64
    .end local v1    # "r":Lcom/qiniu/android/dns/Record;
    :cond_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_6

    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_6
.end method

.method private static trimCname([Lcom/qiniu/android/dns/Record;)[Lcom/qiniu/android/dns/Record;
    .registers 7
    .param p0, "records"    # [Lcom/qiniu/android/dns/Record;

    .prologue
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .local v0, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qiniu/android/dns/Record;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v3, :cond_19

    aget-object v1, p0, v2

    .line 49
    .local v1, "r":Lcom/qiniu/android/dns/Record;
    if-eqz v1, :cond_16

    iget v4, v1, Lcom/qiniu/android/dns/Record;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_16

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 53
    .end local v1    # "r":Lcom/qiniu/android/dns/Record;
    :cond_19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/qiniu/android/dns/Record;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/qiniu/android/dns/Record;

    return-object v2
.end method

.method public static validIP(Ljava/lang/String;)Z
    .registers 10
    .param p0, "ip"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    const/16 v7, 0xff

    const/16 v6, 0x2e

    const/4 v3, 0x0

    .line 71
    if-eqz p0, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x7

    if-lt v4, v5, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xf

    if-le v4, v5, :cond_18

    .line 89
    :cond_17
    :goto_17
    return v3

    .line 72
    :cond_18
    const-string v4, "-"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, "x":I
    const/16 v4, 0x2e

    :try_start_23
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 78
    .local v2, "y":I
    if-eq v2, v8, :cond_33

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-gt v4, v7, :cond_17

    .line 80
    :cond_33
    const/16 v4, 0x2e

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 81
    if-eq v1, v8, :cond_47

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-gt v4, v7, :cond_17

    .line 83
    :cond_47
    const/16 v4, 0x2e

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 84
    if-eq v2, v8, :cond_79

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v4, v7, :cond_79

    add-int/lit8 v2, v2, 0x1

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v4, v7, :cond_79

    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C
    :try_end_76
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_76} :catch_7b

    move-result v4

    if-ne v4, v6, :cond_17

    :cond_79
    const/4 v3, 0x1

    goto :goto_17

    .line 88
    .end local v2    # "y":I
    :catch_7b
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_17
.end method


# virtual methods
.method public onNetworkChange(Lcom/qiniu/android/dns/NetworkInfo;)V
    .registers 4
    .param p1, "info"    # Lcom/qiniu/android/dns/NetworkInfo;

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/qiniu/android/dns/DnsManager;->clearCache()V

    .line 228
    if-nez p1, :cond_7

    sget-object p1, Lcom/qiniu/android/dns/NetworkInfo;->normal:Lcom/qiniu/android/dns/NetworkInfo;

    .end local p1    # "info":Lcom/qiniu/android/dns/NetworkInfo;
    :cond_7
    iput-object p1, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    .line 229
    iget-object v1, p0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    monitor-enter v1

    .line 230
    const/4 v0, 0x0

    :try_start_d
    iput v0, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    .line 231
    monitor-exit v1

    .line 232
    return-void

    .line 231
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_11

    throw v0
.end method

.method public putHosts(Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/dns/DnsManager;
    .registers 4
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->hosts:Lcom/qiniu/android/dns/local/Hosts;

    invoke-virtual {v0, p1, p2}, Lcom/qiniu/android/dns/local/Hosts;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/dns/local/Hosts;

    .line 262
    return-object p0
.end method

.method public putHosts(Ljava/lang/String;Ljava/lang/String;I)Lcom/qiniu/android/dns/DnsManager;
    .registers 6
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "provider"    # I

    .prologue
    .line 249
    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->hosts:Lcom/qiniu/android/dns/local/Hosts;

    new-instance v1, Lcom/qiniu/android/dns/local/Hosts$Value;

    invoke-direct {v1, p2, p3}, Lcom/qiniu/android/dns/local/Hosts$Value;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p1, v1}, Lcom/qiniu/android/dns/local/Hosts;->put(Ljava/lang/String;Lcom/qiniu/android/dns/local/Hosts$Value;)Lcom/qiniu/android/dns/local/Hosts;

    .line 250
    return-object p0
.end method

.method public query(Lcom/qiniu/android/dns/Domain;)[Ljava/lang/String;
    .registers 6
    .param p1, "domain"    # Lcom/qiniu/android/dns/Domain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 105
    if-nez p1, :cond_b

    .line 106
    new-instance v1, Ljava/io/IOException;

    const-string v2, "null domain"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_b
    iget-object v1, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    if-eqz v1, :cond_1b

    iget-object v1, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_36

    .line 109
    :cond_1b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "empty domain "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_36
    iget-object v1, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-static {v1}, Lcom/qiniu/android/dns/DnsManager;->validIP(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 113
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 120
    :cond_45
    :goto_45
    return-object v0

    .line 116
    :cond_46
    invoke-direct {p0, p1}, Lcom/qiniu/android/dns/DnsManager;->queryInternal(Lcom/qiniu/android/dns/Domain;)[Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "r":[Ljava/lang/String;
    if-eqz v0, :cond_45

    array-length v1, v0

    if-le v1, v2, :cond_45

    .line 120
    iget-object v1, p0, Lcom/qiniu/android/dns/DnsManager;->sorter:Lcom/qiniu/android/dns/IpSorter;

    invoke-interface {v1, v0}, Lcom/qiniu/android/dns/IpSorter;->sort([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_45
.end method

.method public query(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Lcom/qiniu/android/dns/Domain;

    invoke-direct {v0, p1}, Lcom/qiniu/android/dns/Domain;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/qiniu/android/dns/DnsManager;->query(Lcom/qiniu/android/dns/Domain;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public queryInetAdress(Lcom/qiniu/android/dns/Domain;)[Ljava/net/InetAddress;
    .registers 6
    .param p1, "domain"    # Lcom/qiniu/android/dns/Domain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Lcom/qiniu/android/dns/DnsManager;->query(Lcom/qiniu/android/dns/Domain;)[Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "ips":[Ljava/lang/String;
    array-length v3, v2

    new-array v0, v3, [Ljava/net/InetAddress;

    .line 215
    .local v0, "addresses":[Ljava/net/InetAddress;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v3, v2

    if-ge v1, v3, :cond_16

    .line 216
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    aput-object v3, v0, v1

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 218
    :cond_16
    return-object v0
.end method
