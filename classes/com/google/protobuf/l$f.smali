.class public final Lcom/google/protobuf/l$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/l$h;
.implements Lcom/google/protobuf/p$a;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/l$f$a;,
        Lcom/google/protobuf/l$f$b;
    }
.end annotation


# static fields
.field private static final di:[Lcom/google/protobuf/A$a;


# instance fields
.field private final cU:Lcom/google/protobuf/l$g;

.field private defaultValue:Ljava/lang/Object;

.field private dj:Lcom/google/protobuf/f$f;

.field private final dk:Lcom/google/protobuf/l$a;

.field private dl:Lcom/google/protobuf/l$f$b;

.field private dm:Lcom/google/protobuf/l$a;

.field private dn:Lcom/google/protobuf/l$a;

.field private do:Lcom/google/protobuf/l$d;

.field private final fullName:Ljava/lang/String;

.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 679
    invoke-static {}, Lcom/google/protobuf/A$a;->hA()[Lcom/google/protobuf/A$a;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/l$f;->di:[Lcom/google/protobuf/A$a;

    .line 855
    invoke-static {}, Lcom/google/protobuf/l$f$b;->gA()[Lcom/google/protobuf/l$f$b;

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lcom/google/protobuf/f$f$c;->cG()[Lcom/google/protobuf/f$f$c;

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_1a

    .line 856
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "descriptor.proto has a new declared type but Desrciptors.java wasn\'t updated."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    :cond_1a
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/f$f;Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$a;IZ)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 890
    iput p4, p0, Lcom/google/protobuf/l$f;->index:I

    .line 891
    iput-object p1, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    .line 892
    invoke-virtual {p1}, Lcom/google/protobuf/f$f;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/google/protobuf/l;->b(Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/l$f;->fullName:Ljava/lang/String;

    .line 893
    iput-object p2, p0, Lcom/google/protobuf/l$f;->cU:Lcom/google/protobuf/l$g;

    .line 895
    invoke-virtual {p1}, Lcom/google/protobuf/f$f;->cr()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 896
    invoke-virtual {p1}, Lcom/google/protobuf/f$f;->cs()Lcom/google/protobuf/f$f$c;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/l$f$b;->b(Lcom/google/protobuf/f$f$c;)Lcom/google/protobuf/l$f$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/l$f;->dl:Lcom/google/protobuf/l$f$b;

    .line 899
    :cond_24
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->getNumber()I

    move-result v0

    if-gtz v0, :cond_32

    .line 900
    new-instance v0, Lcom/google/protobuf/l$c;

    const-string v1, "Field numbers must be positive integers."

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v0

    .line 905
    :cond_32
    invoke-virtual {p1}, Lcom/google/protobuf/f$f;->cw()Lcom/google/protobuf/f$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/f$g;->cM()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->gu()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 906
    new-instance v0, Lcom/google/protobuf/l$c;

    const-string v1, "[packed = true] can only be specified for repeated primitive fields."

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v0

    .line 911
    :cond_4a
    if-eqz p5, :cond_6b

    .line 912
    invoke-virtual {p1}, Lcom/google/protobuf/f$f;->cu()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 913
    new-instance v0, Lcom/google/protobuf/l$c;

    const-string v1, "FieldDescriptorProto.extendee not set for extension field."

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v0

    .line 916
    :cond_5a
    iput-object v2, p0, Lcom/google/protobuf/l$f;->dm:Lcom/google/protobuf/l$a;

    .line 917
    if-eqz p3, :cond_68

    .line 918
    iput-object p3, p0, Lcom/google/protobuf/l$f;->dk:Lcom/google/protobuf/l$a;

    .line 931
    :goto_60
    invoke-static {p2}, Lcom/google/protobuf/l$g;->c(Lcom/google/protobuf/l$g;)Lcom/google/protobuf/l$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/l$b;->a(Lcom/google/protobuf/l$h;)V

    .line 932
    return-void

    .line 920
    :cond_68
    iput-object v2, p0, Lcom/google/protobuf/l$f;->dk:Lcom/google/protobuf/l$a;

    goto :goto_60

    .line 923
    :cond_6b
    invoke-virtual {p1}, Lcom/google/protobuf/f$f;->cu()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 924
    new-instance v0, Lcom/google/protobuf/l$c;

    const-string v1, "FieldDescriptorProto.extendee set for non-extension field."

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v0

    .line 927
    :cond_79
    iput-object p3, p0, Lcom/google/protobuf/l$f;->dm:Lcom/google/protobuf/l$a;

    .line 928
    iput-object v2, p0, Lcom/google/protobuf/l$f;->dk:Lcom/google/protobuf/l$a;

    goto :goto_60
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/f$f;Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$a;IZLcom/google/protobuf/l$1;)V
    .registers 7

    .prologue
    .line 631
    invoke-direct/range {p0 .. p5}, Lcom/google/protobuf/l$f;-><init>(Lcom/google/protobuf/f$f;Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$a;IZ)V

    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/l$f;Lcom/google/protobuf/f$f;)V
    .registers 2

    .prologue
    .line 631
    invoke-direct {p0, p1}, Lcom/google/protobuf/l$f;->g(Lcom/google/protobuf/f$f;)V

    return-void
.end method

.method static synthetic c(Lcom/google/protobuf/l$f;)V
    .registers 1

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/google/protobuf/l$f;->gh()V

    return-void
.end method

.method private g(Lcom/google/protobuf/f$f;)V
    .registers 2

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    .line 1123
    return-void
.end method

.method private gh()V
    .registers 7

    .prologue
    const/16 v5, 0x22

    const/4 v4, 0x0

    .line 936
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->cu()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 937
    iget-object v0, p0, Lcom/google/protobuf/l$f;->cU:Lcom/google/protobuf/l$g;

    invoke-static {v0}, Lcom/google/protobuf/l$g;->c(Lcom/google/protobuf/l$g;)Lcom/google/protobuf/l$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v1}, Lcom/google/protobuf/f$f;->cv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/protobuf/l$b;->a(Ljava/lang/String;Lcom/google/protobuf/l$h;)Lcom/google/protobuf/l$h;

    move-result-object v0

    .line 939
    instance-of v1, v0, Lcom/google/protobuf/l$a;

    if-nez v1, :cond_40

    .line 940
    new-instance v0, Lcom/google/protobuf/l$c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v2}, Lcom/google/protobuf/f$f;->cv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not a message type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v4}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v0

    .line 943
    :cond_40
    check-cast v0, Lcom/google/protobuf/l$a;

    iput-object v0, p0, Lcom/google/protobuf/l$f;->dm:Lcom/google/protobuf/l$a;

    .line 945
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->gv()Lcom/google/protobuf/l$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l$a;->U(I)Z

    move-result v0

    if-nez v0, :cond_83

    .line 946
    new-instance v0, Lcom/google/protobuf/l$c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->gv()Lcom/google/protobuf/l$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/l$a;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" does not declare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->getNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as an extension number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v4}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v0

    .line 953
    :cond_83
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->ct()Z

    move-result v0

    if-eqz v0, :cond_165

    .line 954
    iget-object v0, p0, Lcom/google/protobuf/l$f;->cU:Lcom/google/protobuf/l$g;

    invoke-static {v0}, Lcom/google/protobuf/l$g;->c(Lcom/google/protobuf/l$g;)Lcom/google/protobuf/l$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v1}, Lcom/google/protobuf/f$f;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/protobuf/l$b;->a(Ljava/lang/String;Lcom/google/protobuf/l$h;)Lcom/google/protobuf/l$h;

    move-result-object v0

    .line 957
    iget-object v1, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v1}, Lcom/google/protobuf/f$f;->cr()Z

    move-result v1

    if-nez v1, :cond_ab

    .line 959
    instance-of v1, v0, Lcom/google/protobuf/l$a;

    if-eqz v1, :cond_d8

    .line 960
    sget-object v1, Lcom/google/protobuf/l$f$b;->dK:Lcom/google/protobuf/l$f$b;

    iput-object v1, p0, Lcom/google/protobuf/l$f;->dl:Lcom/google/protobuf/l$f$b;

    .line 969
    :cond_ab
    :goto_ab
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->go()Lcom/google/protobuf/l$f$a;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/l$f$a;->dx:Lcom/google/protobuf/l$f$a;

    if-ne v1, v2, :cond_116

    .line 970
    instance-of v1, v0, Lcom/google/protobuf/l$a;

    if-nez v1, :cond_102

    .line 971
    new-instance v0, Lcom/google/protobuf/l$c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v2}, Lcom/google/protobuf/f$f;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not a message type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v4}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v0

    .line 961
    :cond_d8
    instance-of v1, v0, Lcom/google/protobuf/l$d;

    if-eqz v1, :cond_e1

    .line 962
    sget-object v1, Lcom/google/protobuf/l$f$b;->dN:Lcom/google/protobuf/l$f$b;

    iput-object v1, p0, Lcom/google/protobuf/l$f;->dl:Lcom/google/protobuf/l$f$b;

    goto :goto_ab

    .line 964
    :cond_e1
    new-instance v0, Lcom/google/protobuf/l$c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v2}, Lcom/google/protobuf/f$f;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not a type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v4}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v0

    .line 974
    :cond_102
    check-cast v0, Lcom/google/protobuf/l$a;

    iput-object v0, p0, Lcom/google/protobuf/l$f;->dn:Lcom/google/protobuf/l$a;

    .line 976
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->hasDefaultValue()Z

    move-result v0

    if-eqz v0, :cond_147

    .line 977
    new-instance v0, Lcom/google/protobuf/l$c;

    const-string v1, "Messages can\'t have default values."

    invoke-direct {v0, p0, v1, v4}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v0

    .line 980
    :cond_116
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->go()Lcom/google/protobuf/l$f$a;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/l$f$a;->dw:Lcom/google/protobuf/l$f$a;

    if-ne v1, v2, :cond_15d

    .line 981
    instance-of v1, v0, Lcom/google/protobuf/l$d;

    if-nez v1, :cond_143

    .line 982
    new-instance v0, Lcom/google/protobuf/l$c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v2}, Lcom/google/protobuf/f$f;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not an enum type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v4}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v0

    .line 985
    :cond_143
    check-cast v0, Lcom/google/protobuf/l$d;

    iput-object v0, p0, Lcom/google/protobuf/l$f;->do:Lcom/google/protobuf/l$d;

    .line 1000
    :cond_147
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->hasDefaultValue()Z

    move-result v0

    if-eqz v0, :cond_357

    .line 1001
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->gs()Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 1002
    new-instance v0, Lcom/google/protobuf/l$c;

    const-string v1, "Repeated fields cannot have default values."

    invoke-direct {v0, p0, v1, v4}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v0

    .line 987
    :cond_15d
    new-instance v0, Lcom/google/protobuf/l$c;

    const-string v1, "Field with primitive type has type_name."

    invoke-direct {v0, p0, v1, v4}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v0

    .line 991
    :cond_165
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->go()Lcom/google/protobuf/l$f$a;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/l$f$a;->dx:Lcom/google/protobuf/l$f$a;

    if-eq v0, v1, :cond_175

    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->go()Lcom/google/protobuf/l$f$a;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/l$f$a;->dw:Lcom/google/protobuf/l$f$a;

    if-ne v0, v1, :cond_147

    .line 993
    :cond_175
    new-instance v0, Lcom/google/protobuf/l$c;

    const-string v1, "Field with message or enum type missing type_name."

    invoke-direct {v0, p0, v1, v4}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v0

    .line 1007
    :cond_17d
    :try_start_17d
    sget-object v0, Lcom/google/protobuf/l$1;->b:[I

    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->gq()Lcom/google/protobuf/l$f$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/l$f$b;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_189
    .catch Ljava/lang/NumberFormatException; {:try_start_17d .. :try_end_189} :catch_1d8

    packed-switch v0, :pswitch_data_39c

    .line 1102
    :cond_18c
    :goto_18c
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->isExtension()Z

    move-result v0

    if-nez v0, :cond_19b

    .line 1103
    iget-object v0, p0, Lcom/google/protobuf/l$f;->cU:Lcom/google/protobuf/l$g;

    invoke-static {v0}, Lcom/google/protobuf/l$g;->c(Lcom/google/protobuf/l$g;)Lcom/google/protobuf/l$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/l$b;->a(Lcom/google/protobuf/l$f;)V

    .line 1106
    :cond_19b
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dm:Lcom/google/protobuf/l$a;

    if-eqz v0, :cond_39b

    iget-object v0, p0, Lcom/google/protobuf/l$f;->dm:Lcom/google/protobuf/l$a;

    invoke-virtual {v0}, Lcom/google/protobuf/l$a;->aI()Lcom/google/protobuf/f$k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/f$k;->ei()Z

    move-result v0

    if-eqz v0, :cond_39b

    .line 1108
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_393

    .line 1109
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->isOptional()Z

    move-result v0

    if-eqz v0, :cond_1bf

    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->gq()Lcom/google/protobuf/l$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/l$f$b;->dK:Lcom/google/protobuf/l$f$b;

    if-eq v0, v1, :cond_39b

    .line 1110
    :cond_1bf
    new-instance v0, Lcom/google/protobuf/l$c;

    const-string v1, "Extensions of MessageSets must be optional messages."

    invoke-direct {v0, p0, v1, v4}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v0

    .line 1011
    :pswitch_1c7
    :try_start_1c7
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/d;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/l$f;->defaultValue:Ljava/lang/Object;
    :try_end_1d7
    .catch Ljava/lang/NumberFormatException; {:try_start_1c7 .. :try_end_1d7} :catch_1d8

    goto :goto_18c

    .line 1076
    :catch_1d8
    move-exception v0

    .line 1077
    new-instance v1, Lcom/google/protobuf/l$c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not parse default value: \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v3}, Lcom/google/protobuf/f$f;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0, v4}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/protobuf/l$1;)V

    throw v1

    .line 1015
    :pswitch_1f8
    :try_start_1f8
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/d;->c(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/l$f;->defaultValue:Ljava/lang/Object;

    goto :goto_18c

    .line 1020
    :pswitch_209
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/d;->d(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/l$f;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_18c

    .line 1024
    :pswitch_21b
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/d;->e(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/l$f;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_18c

    .line 1027
    :pswitch_22d
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_245

    .line 1028
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/l$f;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_18c

    .line 1029
    :cond_245
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-inf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25d

    .line 1030
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/l$f;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_18c

    .line 1031
    :cond_25d
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_275

    .line 1032
    const/high16 v0, 0x7fc00000    # NaNf

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/l$f;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_18c

    .line 1034
    :cond_275
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/l$f;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_18c

    .line 1038
    :pswitch_283
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29b

    .line 1039
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/l$f;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_18c

    .line 1040
    :cond_29b
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-inf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b3

    .line 1041
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/l$f;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_18c

    .line 1042
    :cond_2b3
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2cb

    .line 1043
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/l$f;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_18c

    .line 1045
    :cond_2cb
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/l$f;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_18c

    .line 1049
    :pswitch_2d9
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/l$f;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_18c

    .line 1052
    :pswitch_2e7
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/l$f;->defaultValue:Ljava/lang/Object;
    :try_end_2ef
    .catch Ljava/lang/NumberFormatException; {:try_start_1f8 .. :try_end_2ef} :catch_1d8

    goto/16 :goto_18c

    .line 1056
    :pswitch_2f1
    :try_start_2f1
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/d;->a(Ljava/lang/CharSequence;)Lcom/google/protobuf/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/l$f;->defaultValue:Ljava/lang/Object;
    :try_end_2fd
    .catch Lcom/google/protobuf/w; {:try_start_2f1 .. :try_end_2fd} :catch_2ff
    .catch Ljava/lang/NumberFormatException; {:try_start_2f1 .. :try_end_2fd} :catch_1d8

    goto/16 :goto_18c

    .line 1058
    :catch_2ff
    move-exception v0

    .line 1059
    :try_start_300
    new-instance v1, Lcom/google/protobuf/l$c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t parse default value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/protobuf/w;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/protobuf/l$1;)V

    throw v1

    .line 1064
    :pswitch_31a
    iget-object v0, p0, Lcom/google/protobuf/l$f;->do:Lcom/google/protobuf/l$d;

    iget-object v1, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v1}, Lcom/google/protobuf/f$f;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l$d;->D(Ljava/lang/String;)Lcom/google/protobuf/l$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/l$f;->defaultValue:Ljava/lang/Object;

    .line 1065
    iget-object v0, p0, Lcom/google/protobuf/l$f;->defaultValue:Ljava/lang/Object;

    if-nez v0, :cond_18c

    .line 1066
    new-instance v0, Lcom/google/protobuf/l$c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown enum default value: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v2}, Lcom/google/protobuf/f$f;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v0

    .line 1073
    :pswitch_34e
    new-instance v0, Lcom/google/protobuf/l$c;

    const-string v1, "Message type had default value."

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v0
    :try_end_357
    .catch Ljava/lang/NumberFormatException; {:try_start_300 .. :try_end_357} :catch_1d8

    .line 1083
    :cond_357
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->gs()Z

    move-result v0

    if-eqz v0, :cond_365

    .line 1084
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/l$f;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_18c

    .line 1086
    :cond_365
    sget-object v0, Lcom/google/protobuf/l$1;->cS:[I

    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->go()Lcom/google/protobuf/l$f$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/l$f$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3c4

    .line 1096
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->go()Lcom/google/protobuf/l$f$a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/l$f$a;->a(Lcom/google/protobuf/l$f$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/l$f;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_18c

    .line 1090
    :pswitch_380
    iget-object v0, p0, Lcom/google/protobuf/l$f;->do:Lcom/google/protobuf/l$d;

    invoke-virtual {v0}, Lcom/google/protobuf/l$d;->gk()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/l$f;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_18c

    .line 1093
    :pswitch_38f
    iput-object v4, p0, Lcom/google/protobuf/l$f;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_18c

    .line 1114
    :cond_393
    new-instance v0, Lcom/google/protobuf/l$c;

    const-string v1, "MessageSets cannot have fields, only extensions."

    invoke-direct {v0, p0, v1, v4}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v0

    .line 1118
    :cond_39b
    return-void

    .line 1007
    :pswitch_data_39c
    .packed-switch 0x1
        :pswitch_1c7
        :pswitch_1c7
        :pswitch_1c7
        :pswitch_1f8
        :pswitch_1f8
        :pswitch_209
        :pswitch_209
        :pswitch_209
        :pswitch_21b
        :pswitch_21b
        :pswitch_22d
        :pswitch_283
        :pswitch_2d9
        :pswitch_2e7
        :pswitch_2f1
        :pswitch_31a
        :pswitch_34e
        :pswitch_34e
    .end packed-switch

    .line 1086
    :pswitch_data_3c4
    .packed-switch 0x1
        :pswitch_380
        :pswitch_38f
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/u;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 1133
    check-cast p1, Lcom/google/protobuf/t$a;

    check-cast p2, Lcom/google/protobuf/t;

    invoke-interface {p1, p2}, Lcom/google/protobuf/t$a;->d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/protobuf/l$f;)I
    .registers 4

    .prologue
    .line 795
    iget-object v0, p1, Lcom/google/protobuf/l$f;->dm:Lcom/google/protobuf/l$a;

    iget-object v1, p0, Lcom/google/protobuf/l$f;->dm:Lcom/google/protobuf/l$a;

    if-eq v0, v1, :cond_e

    .line 796
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptors can only be compared to other FieldDescriptors for fields of the same message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 800
    :cond_e
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->getNumber()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/protobuf/l$f;->getNumber()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 631
    check-cast p1, Lcom/google/protobuf/l$f;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/l$f;->b(Lcom/google/protobuf/l$f;)I

    move-result v0

    return v0
.end method

.method public cw()Lcom/google/protobuf/f$g;
    .registers 2

    .prologue
    .line 725
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->cw()Lcom/google/protobuf/f$g;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->go()Lcom/google/protobuf/l$f$a;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/l$f$a;->dx:Lcom/google/protobuf/l$f$a;

    if-ne v0, v1, :cond_10

    .line 717
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FieldDescriptor.getDefaultValue() called on an embedded message field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 721
    :cond_10
    iget-object v0, p0, Lcom/google/protobuf/l$f;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/protobuf/l$f;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 638
    iget v0, p0, Lcom/google/protobuf/l$f;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()I
    .registers 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->getNumber()I

    move-result v0

    return v0
.end method

.method public gf()Lcom/google/protobuf/l$g;
    .registers 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/google/protobuf/l$f;->cU:Lcom/google/protobuf/l$g;

    return-object v0
.end method

.method public synthetic gi()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->gn()Lcom/google/protobuf/f$f;

    move-result-object v0

    return-object v0
.end method

.method public gn()Lcom/google/protobuf/f$f;
    .registers 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    return-object v0
.end method

.method public go()Lcom/google/protobuf/l$f$a;
    .registers 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dl:Lcom/google/protobuf/l$f$b;

    invoke-virtual {v0}, Lcom/google/protobuf/l$f$b;->go()Lcom/google/protobuf/l$f$a;

    move-result-object v0

    return-object v0
.end method

.method public gp()Lcom/google/protobuf/A$b;
    .registers 2

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->gr()Lcom/google/protobuf/A$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/A$a;->hB()Lcom/google/protobuf/A$b;

    move-result-object v0

    return-object v0
.end method

.method public gq()Lcom/google/protobuf/l$f$b;
    .registers 2

    .prologue
    .line 670
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dl:Lcom/google/protobuf/l$f$b;

    return-object v0
.end method

.method public gr()Lcom/google/protobuf/A$a;
    .registers 3

    .prologue
    .line 674
    sget-object v0, Lcom/google/protobuf/l$f;->di:[Lcom/google/protobuf/A$a;

    iget-object v1, p0, Lcom/google/protobuf/l$f;->dl:Lcom/google/protobuf/l$f$b;

    invoke-virtual {v1}, Lcom/google/protobuf/l$f$b;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public gs()Z
    .registers 3

    .prologue
    .line 694
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->cq()Lcom/google/protobuf/f$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/f$f$b;->aT:Lcom/google/protobuf/f$f$b;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public gt()Z
    .registers 2

    .prologue
    .line 699
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->cw()Lcom/google/protobuf/f$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/f$g;->cM()Z

    move-result v0

    return v0
.end method

.method public gu()Z
    .registers 2

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->gs()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->gr()Lcom/google/protobuf/A$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/A$a;->gu()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public gv()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 735
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dm:Lcom/google/protobuf/l$a;

    return-object v0
.end method

.method public gw()Lcom/google/protobuf/l$a;
    .registers 3

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->isExtension()Z

    move-result v0

    if-nez v0, :cond_e

    .line 760
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This field is not an extension."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 763
    :cond_e
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dk:Lcom/google/protobuf/l$a;

    return-object v0
.end method

.method public gx()Lcom/google/protobuf/l$a;
    .registers 3

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->go()Lcom/google/protobuf/l$f$a;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/l$f$a;->dx:Lcom/google/protobuf/l$f$a;

    if-eq v0, v1, :cond_10

    .line 769
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This field is not of message type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 772
    :cond_10
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dn:Lcom/google/protobuf/l$a;

    return-object v0
.end method

.method public gy()Lcom/google/protobuf/l$d;
    .registers 3

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->go()Lcom/google/protobuf/l$f$a;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/l$f$a;->dw:Lcom/google/protobuf/l$f$a;

    if-eq v0, v1, :cond_10

    .line 778
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This field is not of enum type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    :cond_10
    iget-object v0, p0, Lcom/google/protobuf/l$f;->do:Lcom/google/protobuf/l$d;

    return-object v0
.end method

.method public isExtension()Z
    .registers 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->cu()Z

    move-result v0

    return v0
.end method

.method public isOptional()Z
    .registers 3

    .prologue
    .line 689
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->cq()Lcom/google/protobuf/f$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/f$f$b;->aR:Lcom/google/protobuf/f$f$b;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isRequired()Z
    .registers 3

    .prologue
    .line 684
    iget-object v0, p0, Lcom/google/protobuf/l$f;->dj:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->cq()Lcom/google/protobuf/f$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/f$f$b;->aS:Lcom/google/protobuf/f$f$b;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
