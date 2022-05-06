.class public Lcom/yunding/analysis/b/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yunding/analysis/b/k$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Landroid/database/sqlite/SQLiteDatabase;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/yunding/analysis/b/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yunding/analysis/b/k;->a:Ljava/lang/String;

    const-string v0, "UserAgents"

    sput-object v0, Lcom/yunding/analysis/b/k;->c:Ljava/lang/String;

    const-string v0, "url"

    sput-object v0, Lcom/yunding/analysis/b/k;->d:Ljava/lang/String;

    const-string v0, "useragent"

    sput-object v0, Lcom/yunding/analysis/b/k;->e:Ljava/lang/String;

    const-string v0, "desc"

    sput-object v0, Lcom/yunding/analysis/b/k;->f:Ljava/lang/String;

    const-string v0, "success"

    sput-object v0, Lcom/yunding/analysis/b/k;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yunding/analysis/b/l;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v0, Lcom/yunding/analysis/b/k;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_d

    sget-object v0, Lcom/yunding/analysis/b/k;->a:Ljava/lang/String;

    const-string v1, "please init first SDK"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    return-object v2

    :cond_d
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/yunding/analysis/b/k;->b:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/yunding/analysis/b/k;->c:Ljava/lang/String;

    const-string v8, "10"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    :goto_25
    if-eqz v0, :cond_48

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/yunding/analysis/b/l;

    invoke-direct {v5, v0, v2, v3, v4}, Lcom/yunding/analysis/b/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    goto :goto_25

    :cond_48
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v2, v9

    goto :goto_c
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Lcom/yunding/analysis/b/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/yunding/analysis/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sget-object v1, Lcom/yunding/analysis/b/k;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_f

    invoke-virtual {v0}, Lcom/yunding/analysis/b/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/yunding/analysis/b/k;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_f
    return-void
.end method

.method public static a(Lcom/yunding/analysis/b/k$a;)V
    .registers 8

    invoke-static {}, Lcom/yunding/analysis/b/k;->b()I

    move-result v0

    if-lez v0, :cond_3b

    invoke-static {}, Lcom/yunding/analysis/b/k;->a()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3b

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yunding/analysis/b/l;

    invoke-virtual {v0}, Lcom/yunding/analysis/b/l;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yunding/analysis/b/l;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yunding/analysis/b/l;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/yunding/analysis/b/l;->d()Ljava/lang/String;

    move-result-object v0

    const-string v6, "no"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p0, v3, v4, v5}, Lcom/yunding/analysis/b/k$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_33
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_37
    invoke-static {v4}, Lcom/yunding/analysis/b/k;->a(Ljava/lang/String;)V

    goto :goto_33

    :cond_3b
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/yunding/analysis/b/k;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_c

    sget-object v0, Lcom/yunding/analysis/b/k;->a:Ljava/lang/String;

    const-string v1, "please init first SDK"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void

    :cond_c
    const-string v0, "useragent=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/yunding/analysis/b/k;->b:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/yunding/analysis/b/k;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_b
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    sget-object v0, Lcom/yunding/analysis/b/k;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_c

    sget-object v0, Lcom/yunding/analysis/b/k;->a:Ljava/lang/String;

    const-string v1, "please init first SDK"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void

    :cond_c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/yunding/analysis/b/k;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "useragent=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    sget-object v3, Lcom/yunding/analysis/b/k;->b:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lcom/yunding/analysis/b/k;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_b
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    sget-object v0, Lcom/yunding/analysis/b/k;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_c

    sget-object v0, Lcom/yunding/analysis/b/k;->a:Ljava/lang/String;

    const-string v1, "please init first SDK"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void

    :cond_c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/yunding/analysis/b/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/yunding/analysis/b/k;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/yunding/analysis/b/k;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/yunding/analysis/b/k;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/yunding/analysis/b/k;->b:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/yunding/analysis/b/k;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_b
.end method

.method public static b()I
    .registers 8

    const/4 v2, 0x0

    sget-object v0, Lcom/yunding/analysis/b/k;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_e

    sget-object v0, Lcom/yunding/analysis/b/k;->a:Ljava/lang/String;

    const-string v1, "please init first SDK"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    sget-object v0, Lcom/yunding/analysis/b/k;->b:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/yunding/analysis/b/k;->c:Ljava/lang/String;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_d
.end method
