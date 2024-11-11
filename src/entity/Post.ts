import { Entity, PrimaryGeneratedColumn, Column, ManyToOne  } from "typeorm";
import { Users } from "./Users";

//TODO Crie a entidade de Post

@Entity()
export class Post {
    @PrimaryGeneratedColumn()
    id: number;

    @Column()
    title: string;

    @Column()
    description: string;

    @ManyToOne(() => User, (user) => user.posts)
    user: User;
}