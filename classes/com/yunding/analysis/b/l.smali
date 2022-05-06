.class public Lcom/yunding/analysis/b/l;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yunding/analysis/b/l;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/yunding/analysis/b/l;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/yunding/analysis/b/l;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/yunding/analysis/b/l;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yunding/analysis/b/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yunding/analysis/b/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yunding/analysis/b/l;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yunding/analysis/b/l;->d:Ljava/lang/String;

    return-object v0
.end method
