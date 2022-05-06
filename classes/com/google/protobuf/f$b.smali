.class public final Lcom/google/protobuf/f$b;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/f$b$a;
    }
.end annotation


# static fields
.field private static final aq:Lcom/google/protobuf/f$b;


# instance fields
.field private Z:Z

.field private aa:Ljava/lang/String;

.field private ag:Z

.field private ai:I

.field private ar:Ljava/util/List;

.field private as:Lcom/google/protobuf/f$c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3514
    new-instance v0, Lcom/google/protobuf/f$b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/f$b;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/f$b;->aq:Lcom/google/protobuf/f$b;

    .line 3515
    invoke-static {}, Lcom/google/protobuf/f;->K()V

    .line 3516
    sget-object v0, Lcom/google/protobuf/f$b;->aq:Lcom/google/protobuf/f$b;

    invoke-direct {v0}, Lcom/google/protobuf/f$b;->aJ()V

    .line 3517
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3082
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 3109
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$b;->aa:Ljava/lang/String;

    .line 3115
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$b;->ar:Ljava/util/List;

    .line 3160
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$b;->ai:I

    .line 3083
    invoke-direct {p0}, Lcom/google/protobuf/f$b;->aJ()V

    .line 3084
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/g;)V
    .registers 2

    .prologue
    .line 3079
    invoke-direct {p0}, Lcom/google/protobuf/f$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 3085
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 3109
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$b;->aa:Ljava/lang/String;

    .line 3115
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$b;->ar:Ljava/util/List;

    .line 3160
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$b;->ai:I

    .line 3085
    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/f$b;Lcom/google/protobuf/f$c;)Lcom/google/protobuf/f$c;
    .registers 2

    .prologue
    .line 3079
    iput-object p1, p0, Lcom/google/protobuf/f$b;->as:Lcom/google/protobuf/f$c;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$b;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 3079
    iput-object p1, p0, Lcom/google/protobuf/f$b;->aa:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$b;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 3079
    iput-object p1, p0, Lcom/google/protobuf/f$b;->ar:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$b;Z)Z
    .registers 2

    .prologue
    .line 3079
    iput-boolean p1, p0, Lcom/google/protobuf/f$b;->Z:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 3133
    invoke-static {}, Lcom/google/protobuf/f$c;->bB()Lcom/google/protobuf/f$c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$b;->as:Lcom/google/protobuf/f$c;

    .line 3134
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 3098
    invoke-static {}, Lcom/google/protobuf/f;->V()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/google/protobuf/f$b;)Lcom/google/protobuf/f$b$a;
    .registers 2

    .prologue
    .line 3253
    invoke-static {}, Lcom/google/protobuf/f$b;->bs()Lcom/google/protobuf/f$b$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/f$b$a;->e(Lcom/google/protobuf/f$b;)Lcom/google/protobuf/f$b$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/protobuf/f$b;Z)Z
    .registers 2

    .prologue
    .line 3079
    iput-boolean p1, p0, Lcom/google/protobuf/f$b;->ag:Z

    return p1
.end method

.method public static bo()Lcom/google/protobuf/f$b;
    .registers 1

    .prologue
    .line 3089
    sget-object v0, Lcom/google/protobuf/f$b;->aq:Lcom/google/protobuf/f$b;

    return-object v0
.end method

.method public static bs()Lcom/google/protobuf/f$b$a;
    .registers 1

    .prologue
    .line 3250
    invoke-static {}, Lcom/google/protobuf/f$b$a;->bA()Lcom/google/protobuf/f$b$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/google/protobuf/f$b;)Ljava/util/List;
    .registers 2

    .prologue
    .line 3079
    iget-object v0, p0, Lcom/google/protobuf/f$b;->ar:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/google/protobuf/f$b;)Lcom/google/protobuf/f$c;
    .registers 2

    .prologue
    .line 3079
    iget-object v0, p0, Lcom/google/protobuf/f$b;->as:Lcom/google/protobuf/f$c;

    return-object v0
.end method


# virtual methods
.method public J(I)Lcom/google/protobuf/f$d;
    .registers 3

    .prologue
    .line 3122
    iget-object v0, p0, Lcom/google/protobuf/f$b;->ar:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$d;

    return-object v0
.end method

.method public a()I
    .registers 5

    .prologue
    .line 3162
    iget v0, p0, Lcom/google/protobuf/f$b;->ai:I

    .line 3163
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 3180
    :goto_5
    return v0

    .line 3165
    :cond_6
    const/4 v0, 0x0

    .line 3166
    invoke-virtual {p0}, Lcom/google/protobuf/f$b;->hasName()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 3167
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/f$b;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 3170
    :cond_18
    invoke-virtual {p0}, Lcom/google/protobuf/f$b;->bq()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$d;

    .line 3171
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_21

    .line 3174
    :cond_35
    invoke-virtual {p0}, Lcom/google/protobuf/f$b;->aH()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 3175
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/f$b;->br()Lcom/google/protobuf/f$c;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v1, v0

    .line 3178
    :cond_45
    invoke-virtual {p0}, Lcom/google/protobuf/f$b;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/z;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 3179
    iput v0, p0, Lcom/google/protobuf/f$b;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 5

    .prologue
    .line 3147
    invoke-virtual {p0}, Lcom/google/protobuf/f$b;->a()I

    .line 3148
    invoke-virtual {p0}, Lcom/google/protobuf/f$b;->hasName()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3149
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/f$b;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 3151
    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/f$b;->bq()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$d;

    .line 3152
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_19

    .line 3154
    :cond_2a
    invoke-virtual {p0}, Lcom/google/protobuf/f$b;->aH()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 3155
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/f$b;->br()Lcom/google/protobuf/f$c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 3157
    :cond_38
    invoke-virtual {p0}, Lcom/google/protobuf/f$b;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 3158
    return-void
.end method

.method public aH()Z
    .registers 2

    .prologue
    .line 3129
    iget-boolean v0, p0, Lcom/google/protobuf/f$b;->ag:Z

    return v0
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 3079
    invoke-virtual {p0}, Lcom/google/protobuf/f$b;->bt()Lcom/google/protobuf/f$b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 3079
    invoke-virtual {p0}, Lcom/google/protobuf/f$b;->bp()Lcom/google/protobuf/f$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 3079
    invoke-virtual {p0}, Lcom/google/protobuf/f$b;->bu()Lcom/google/protobuf/f$b$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 3103
    invoke-static {}, Lcom/google/protobuf/f;->W()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public bp()Lcom/google/protobuf/f$b;
    .registers 2

    .prologue
    .line 3093
    sget-object v0, Lcom/google/protobuf/f$b;->aq:Lcom/google/protobuf/f$b;

    return-object v0
.end method

.method public bq()Ljava/util/List;
    .registers 2

    .prologue
    .line 3118
    iget-object v0, p0, Lcom/google/protobuf/f$b;->ar:Ljava/util/List;

    return-object v0
.end method

.method public br()Lcom/google/protobuf/f$c;
    .registers 2

    .prologue
    .line 3130
    iget-object v0, p0, Lcom/google/protobuf/f$b;->as:Lcom/google/protobuf/f$c;

    return-object v0
.end method

.method public bt()Lcom/google/protobuf/f$b$a;
    .registers 2

    .prologue
    .line 3251
    invoke-static {}, Lcom/google/protobuf/f$b;->bs()Lcom/google/protobuf/f$b$a;

    move-result-object v0

    return-object v0
.end method

.method public bu()Lcom/google/protobuf/f$b$a;
    .registers 2

    .prologue
    .line 3255
    invoke-static {p0}, Lcom/google/protobuf/f$b;->b(Lcom/google/protobuf/f$b;)Lcom/google/protobuf/f$b$a;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3111
    iget-object v0, p0, Lcom/google/protobuf/f$b;->aa:Ljava/lang/String;

    return-object v0
.end method

.method public getValueCount()I
    .registers 2

    .prologue
    .line 3120
    iget-object v0, p0, Lcom/google/protobuf/f$b;->ar:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 3110
    iget-boolean v0, p0, Lcom/google/protobuf/f$b;->Z:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 3136
    invoke-virtual {p0}, Lcom/google/protobuf/f$b;->bq()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$d;

    .line 3137
    invoke-virtual {v0}, Lcom/google/protobuf/f$d;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 3142
    :goto_1c
    return v0

    .line 3139
    :cond_1d
    invoke-virtual {p0}, Lcom/google/protobuf/f$b;->aH()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 3140
    invoke-virtual {p0}, Lcom/google/protobuf/f$b;->br()Lcom/google/protobuf/f$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/f$c;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2f

    move v0, v1

    goto :goto_1c

    .line 3142
    :cond_2f
    const/4 v0, 0x1

    goto :goto_1c
.end method
