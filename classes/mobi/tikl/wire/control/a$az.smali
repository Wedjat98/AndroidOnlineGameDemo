.class public final Lmobi/tikl/wire/control/a$az;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "az"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$az$a;
    }
.end annotation


# static fields
.field private static final yB:Lmobi/tikl/wire/control/a$az;


# instance fields
.field private ai:I

.field private yC:Z

.field private yD:Ljava/lang/String;

.field private yE:Z

.field private yF:Ljava/lang/String;

.field private yG:Z

.field private yH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15216
    new-instance v0, Lmobi/tikl/wire/control/a$az;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$az;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$az;->yB:Lmobi/tikl/wire/control/a$az;

    .line 15217
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 15218
    sget-object v0, Lmobi/tikl/wire/control/a$az;->yB:Lmobi/tikl/wire/control/a$az;

    .line 15219
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 14854
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 14881
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$az;->yD:Ljava/lang/String;

    .line 14888
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$az;->yF:Ljava/lang/String;

    .line 14895
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$az;->yH:Ljava/lang/String;

    .line 14922
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$az;->ai:I

    .line 14855
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 14851
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$az;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 14857
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 14881
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$az;->yD:Ljava/lang/String;

    .line 14888
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$az;->yF:Ljava/lang/String;

    .line 14895
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$az;->yH:Ljava/lang/String;

    .line 14922
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$az;->ai:I

    .line 14857
    return-void
.end method

.method public static KD()Lmobi/tikl/wire/control/a$az;
    .registers 1

    .prologue
    .line 14861
    sget-object v0, Lmobi/tikl/wire/control/a$az;->yB:Lmobi/tikl/wire/control/a$az;

    return-object v0
.end method

.method public static KL()Lmobi/tikl/wire/control/a$az$a;
    .registers 1

    .prologue
    .line 15012
    invoke-static {}, Lmobi/tikl/wire/control/a$az$a;->KT()Lmobi/tikl/wire/control/a$az$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$az;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 14851
    iput-object p1, p0, Lmobi/tikl/wire/control/a$az;->yD:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$az;Z)Z
    .registers 2

    .prologue
    .line 14851
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$az;->yC:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 14870
    invoke-static {}, Lmobi/tikl/wire/control/a;->lk()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$az;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 14851
    iput-object p1, p0, Lmobi/tikl/wire/control/a$az;->yF:Ljava/lang/String;

    return-object p1
.end method

.method public static b(Lmobi/tikl/wire/control/a$az;)Lmobi/tikl/wire/control/a$az$a;
    .registers 2

    .prologue
    .line 15015
    invoke-static {}, Lmobi/tikl/wire/control/a$az;->KL()Lmobi/tikl/wire/control/a$az$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$az$a;->c(Lmobi/tikl/wire/control/a$az;)Lmobi/tikl/wire/control/a$az$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$az;Z)Z
    .registers 2

    .prologue
    .line 14851
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$az;->yE:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$az;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 14851
    iput-object p1, p0, Lmobi/tikl/wire/control/a$az;->yH:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$az;Z)Z
    .registers 2

    .prologue
    .line 14851
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$az;->yG:Z

    return p1
.end method


# virtual methods
.method public KE()Lmobi/tikl/wire/control/a$az;
    .registers 2

    .prologue
    .line 14865
    sget-object v0, Lmobi/tikl/wire/control/a$az;->yB:Lmobi/tikl/wire/control/a$az;

    return-object v0
.end method

.method public KF()Z
    .registers 2

    .prologue
    .line 14882
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$az;->yC:Z

    return v0
.end method

.method public KG()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14883
    iget-object v0, p0, Lmobi/tikl/wire/control/a$az;->yD:Ljava/lang/String;

    return-object v0
.end method

.method public KH()Z
    .registers 2

    .prologue
    .line 14889
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$az;->yE:Z

    return v0
.end method

.method public KI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14890
    iget-object v0, p0, Lmobi/tikl/wire/control/a$az;->yF:Ljava/lang/String;

    return-object v0
.end method

.method public KJ()Z
    .registers 2

    .prologue
    .line 14896
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$az;->yG:Z

    return v0
.end method

.method public KK()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14897
    iget-object v0, p0, Lmobi/tikl/wire/control/a$az;->yH:Ljava/lang/String;

    return-object v0
.end method

.method public KM()Lmobi/tikl/wire/control/a$az$a;
    .registers 2

    .prologue
    .line 15013
    invoke-static {}, Lmobi/tikl/wire/control/a$az;->KL()Lmobi/tikl/wire/control/a$az$a;

    move-result-object v0

    return-object v0
.end method

.method public KN()Lmobi/tikl/wire/control/a$az$a;
    .registers 2

    .prologue
    .line 15017
    invoke-static {p0}, Lmobi/tikl/wire/control/a$az;->b(Lmobi/tikl/wire/control/a$az;)Lmobi/tikl/wire/control/a$az$a;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .registers 4

    .prologue
    .line 14924
    iget v0, p0, Lmobi/tikl/wire/control/a$az;->ai:I

    .line 14925
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 14942
    :goto_5
    return v0

    .line 14927
    :cond_6
    const/4 v0, 0x0

    .line 14928
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$az;->KF()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 14929
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$az;->KG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 14932
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$az;->KH()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 14933
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$az;->KI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14936
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$az;->KJ()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 14937
    const/16 v1, 0xa

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$az;->KK()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14940
    :cond_39
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$az;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 14941
    iput v0, p0, Lmobi/tikl/wire/control/a$az;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 14909
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$az;->a()I

    .line 14910
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$az;->KF()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 14911
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$az;->KG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 14913
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$az;->KH()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 14914
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$az;->KI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 14916
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$az;->KJ()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 14917
    const/16 v0, 0xa

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$az;->KK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 14919
    :cond_2e
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$az;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 14920
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 14851
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$az;->KM()Lmobi/tikl/wire/control/a$az$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 14851
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$az;->KE()Lmobi/tikl/wire/control/a$az;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 14851
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$az;->KN()Lmobi/tikl/wire/control/a$az$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 14875
    invoke-static {}, Lmobi/tikl/wire/control/a;->ll()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 14902
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$az;->yC:Z

    if-nez v1, :cond_6

    .line 14904
    :cond_5
    :goto_5
    return v0

    .line 14903
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$az;->yE:Z

    if-eqz v1, :cond_5

    .line 14904
    const/4 v0, 0x1

    goto :goto_5
.end method
