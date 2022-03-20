<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220320084248 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE agent (id INT AUTO_INCREMENT NOT NULL, nationality_id INT NOT NULL, firstname VARCHAR(255) NOT NULL, lastname VARCHAR(255) NOT NULL, date_naissance DATETIME NOT NULL, code_authentification INT NOT NULL, INDEX IDX_268B9C9D1C9DA55 (nationality_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE agent_speciality (agent_id INT NOT NULL, speciality_id INT NOT NULL, INDEX IDX_829171813414710B (agent_id), INDEX IDX_829171813B5A08D7 (speciality_id), PRIMARY KEY(agent_id, speciality_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE cible (id INT AUTO_INCREMENT NOT NULL, nationality_id INT NOT NULL, firstname VARCHAR(255) NOT NULL, lastname VARCHAR(255) NOT NULL, date_naissance DATETIME NOT NULL, name_code VARCHAR(255) NOT NULL, INDEX IDX_E15DEC3B1C9DA55 (nationality_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE contact (id INT AUTO_INCREMENT NOT NULL, nationality_id INT NOT NULL, name VARCHAR(255) NOT NULL, lastname VARCHAR(255) NOT NULL, date_naissance DATETIME NOT NULL, nom_code VARCHAR(255) NOT NULL, INDEX IDX_4C62E6381C9DA55 (nationality_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE mission (id INT AUTO_INCREMENT NOT NULL, type_mission_id INT NOT NULL, statut_id INT NOT NULL, pays_id INT NOT NULL, non_code VARCHAR(255) NOT NULL, titre VARCHAR(255) NOT NULL, description LONGTEXT NOT NULL, slug VARCHAR(255) NOT NULL, date_debut DATETIME NOT NULL, date_fin DATETIME NOT NULL, INDEX IDX_9067F23CA36F78B5 (type_mission_id), INDEX IDX_9067F23CF6203804 (statut_id), INDEX IDX_9067F23CA6E44244 (pays_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE mission_planque (mission_id INT NOT NULL, planque_id INT NOT NULL, INDEX IDX_DA0690F7BE6CAE90 (mission_id), INDEX IDX_DA0690F7CE8A20B (planque_id), PRIMARY KEY(mission_id, planque_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE mission_speciality (mission_id INT NOT NULL, speciality_id INT NOT NULL, INDEX IDX_B1D78D15BE6CAE90 (mission_id), INDEX IDX_B1D78D153B5A08D7 (speciality_id), PRIMARY KEY(mission_id, speciality_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE mission_agent (mission_id INT NOT NULL, agent_id INT NOT NULL, INDEX IDX_B61DC3A0BE6CAE90 (mission_id), INDEX IDX_B61DC3A03414710B (agent_id), PRIMARY KEY(mission_id, agent_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE mission_contact (mission_id INT NOT NULL, contact_id INT NOT NULL, INDEX IDX_DD5E7275BE6CAE90 (mission_id), INDEX IDX_DD5E7275E7A1254A (contact_id), PRIMARY KEY(mission_id, contact_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE mission_cible (mission_id INT NOT NULL, cible_id INT NOT NULL, INDEX IDX_71CBB306BE6CAE90 (mission_id), INDEX IDX_71CBB306A96E5E09 (cible_id), PRIMARY KEY(mission_id, cible_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE nationality (id INT AUTO_INCREMENT NOT NULL, name_nationality VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE pays (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE planque (id INT AUTO_INCREMENT NOT NULL, pays_id INT NOT NULL, type_id INT NOT NULL, name VARCHAR(255) NOT NULL, code INT NOT NULL, adresse LONGTEXT NOT NULL, INDEX IDX_4B3A04BAA6E44244 (pays_id), INDEX IDX_4B3A04BAC54C8C93 (type_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE speciality (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE statut (id INT AUTO_INCREMENT NOT NULL, name_statut VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE type_mission (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE type_planque (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE user (id INT AUTO_INCREMENT NOT NULL, email VARCHAR(255) NOT NULL, roles JSON NOT NULL, password VARCHAR(255) NOT NULL, firstname VARCHAR(255) NOT NULL, lastname VARCHAR(255) NOT NULL, UNIQUE INDEX UNIQ_8D93D649E7927C74 (email), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE messenger_messages (id BIGINT AUTO_INCREMENT NOT NULL, body LONGTEXT NOT NULL, headers LONGTEXT NOT NULL, queue_name VARCHAR(255) NOT NULL, created_at DATETIME NOT NULL, available_at DATETIME NOT NULL, delivered_at DATETIME DEFAULT NULL, INDEX IDX_75EA56E016BA31DB (delivered_at), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE agent ADD CONSTRAINT FK_268B9C9D1C9DA55 FOREIGN KEY (nationality_id) REFERENCES nationality (id)');
        $this->addSql('ALTER TABLE agent_speciality ADD CONSTRAINT FK_829171813414710B FOREIGN KEY (agent_id) REFERENCES agent (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE agent_speciality ADD CONSTRAINT FK_829171813B5A08D7 FOREIGN KEY (speciality_id) REFERENCES speciality (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE cible ADD CONSTRAINT FK_E15DEC3B1C9DA55 FOREIGN KEY (nationality_id) REFERENCES nationality (id)');
        $this->addSql('ALTER TABLE contact ADD CONSTRAINT FK_4C62E6381C9DA55 FOREIGN KEY (nationality_id) REFERENCES nationality (id)');
        $this->addSql('ALTER TABLE mission ADD CONSTRAINT FK_9067F23CA36F78B5 FOREIGN KEY (type_mission_id) REFERENCES type_mission (id)');
        $this->addSql('ALTER TABLE mission ADD CONSTRAINT FK_9067F23CF6203804 FOREIGN KEY (statut_id) REFERENCES statut (id)');
        $this->addSql('ALTER TABLE mission ADD CONSTRAINT FK_9067F23CA6E44244 FOREIGN KEY (pays_id) REFERENCES pays (id)');
        $this->addSql('ALTER TABLE mission_planque ADD CONSTRAINT FK_DA0690F7BE6CAE90 FOREIGN KEY (mission_id) REFERENCES mission (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE mission_planque ADD CONSTRAINT FK_DA0690F7CE8A20B FOREIGN KEY (planque_id) REFERENCES planque (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE mission_speciality ADD CONSTRAINT FK_B1D78D15BE6CAE90 FOREIGN KEY (mission_id) REFERENCES mission (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE mission_speciality ADD CONSTRAINT FK_B1D78D153B5A08D7 FOREIGN KEY (speciality_id) REFERENCES speciality (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE mission_agent ADD CONSTRAINT FK_B61DC3A0BE6CAE90 FOREIGN KEY (mission_id) REFERENCES mission (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE mission_agent ADD CONSTRAINT FK_B61DC3A03414710B FOREIGN KEY (agent_id) REFERENCES agent (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE mission_contact ADD CONSTRAINT FK_DD5E7275BE6CAE90 FOREIGN KEY (mission_id) REFERENCES mission (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE mission_contact ADD CONSTRAINT FK_DD5E7275E7A1254A FOREIGN KEY (contact_id) REFERENCES contact (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE mission_cible ADD CONSTRAINT FK_71CBB306BE6CAE90 FOREIGN KEY (mission_id) REFERENCES mission (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE mission_cible ADD CONSTRAINT FK_71CBB306A96E5E09 FOREIGN KEY (cible_id) REFERENCES cible (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE planque ADD CONSTRAINT FK_4B3A04BAA6E44244 FOREIGN KEY (pays_id) REFERENCES pays (id)');
        $this->addSql('ALTER TABLE planque ADD CONSTRAINT FK_4B3A04BAC54C8C93 FOREIGN KEY (type_id) REFERENCES type_planque (id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE agent_speciality DROP FOREIGN KEY FK_829171813414710B');
        $this->addSql('ALTER TABLE mission_agent DROP FOREIGN KEY FK_B61DC3A03414710B');
        $this->addSql('ALTER TABLE mission_cible DROP FOREIGN KEY FK_71CBB306A96E5E09');
        $this->addSql('ALTER TABLE mission_contact DROP FOREIGN KEY FK_DD5E7275E7A1254A');
        $this->addSql('ALTER TABLE mission_planque DROP FOREIGN KEY FK_DA0690F7BE6CAE90');
        $this->addSql('ALTER TABLE mission_speciality DROP FOREIGN KEY FK_B1D78D15BE6CAE90');
        $this->addSql('ALTER TABLE mission_agent DROP FOREIGN KEY FK_B61DC3A0BE6CAE90');
        $this->addSql('ALTER TABLE mission_contact DROP FOREIGN KEY FK_DD5E7275BE6CAE90');
        $this->addSql('ALTER TABLE mission_cible DROP FOREIGN KEY FK_71CBB306BE6CAE90');
        $this->addSql('ALTER TABLE agent DROP FOREIGN KEY FK_268B9C9D1C9DA55');
        $this->addSql('ALTER TABLE cible DROP FOREIGN KEY FK_E15DEC3B1C9DA55');
        $this->addSql('ALTER TABLE contact DROP FOREIGN KEY FK_4C62E6381C9DA55');
        $this->addSql('ALTER TABLE mission DROP FOREIGN KEY FK_9067F23CA6E44244');
        $this->addSql('ALTER TABLE planque DROP FOREIGN KEY FK_4B3A04BAA6E44244');
        $this->addSql('ALTER TABLE mission_planque DROP FOREIGN KEY FK_DA0690F7CE8A20B');
        $this->addSql('ALTER TABLE agent_speciality DROP FOREIGN KEY FK_829171813B5A08D7');
        $this->addSql('ALTER TABLE mission_speciality DROP FOREIGN KEY FK_B1D78D153B5A08D7');
        $this->addSql('ALTER TABLE mission DROP FOREIGN KEY FK_9067F23CF6203804');
        $this->addSql('ALTER TABLE mission DROP FOREIGN KEY FK_9067F23CA36F78B5');
        $this->addSql('ALTER TABLE planque DROP FOREIGN KEY FK_4B3A04BAC54C8C93');
        $this->addSql('DROP TABLE agent');
        $this->addSql('DROP TABLE agent_speciality');
        $this->addSql('DROP TABLE cible');
        $this->addSql('DROP TABLE contact');
        $this->addSql('DROP TABLE mission');
        $this->addSql('DROP TABLE mission_planque');
        $this->addSql('DROP TABLE mission_speciality');
        $this->addSql('DROP TABLE mission_agent');
        $this->addSql('DROP TABLE mission_contact');
        $this->addSql('DROP TABLE mission_cible');
        $this->addSql('DROP TABLE nationality');
        $this->addSql('DROP TABLE pays');
        $this->addSql('DROP TABLE planque');
        $this->addSql('DROP TABLE speciality');
        $this->addSql('DROP TABLE statut');
        $this->addSql('DROP TABLE type_mission');
        $this->addSql('DROP TABLE type_planque');
        $this->addSql('DROP TABLE user');
        $this->addSql('DROP TABLE messenger_messages');
    }
}
