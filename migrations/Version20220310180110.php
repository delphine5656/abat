<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220310180110 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE mission_planque (mission_id INT NOT NULL, planque_id INT NOT NULL, INDEX IDX_DA0690F7BE6CAE90 (mission_id), INDEX IDX_DA0690F7CE8A20B (planque_id), PRIMARY KEY(mission_id, planque_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE mission_speciality (mission_id INT NOT NULL, speciality_id INT NOT NULL, INDEX IDX_B1D78D15BE6CAE90 (mission_id), INDEX IDX_B1D78D153B5A08D7 (speciality_id), PRIMARY KEY(mission_id, speciality_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE mission_agent (mission_id INT NOT NULL, agent_id INT NOT NULL, INDEX IDX_B61DC3A0BE6CAE90 (mission_id), INDEX IDX_B61DC3A03414710B (agent_id), PRIMARY KEY(mission_id, agent_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE mission_contact (mission_id INT NOT NULL, contact_id INT NOT NULL, INDEX IDX_DD5E7275BE6CAE90 (mission_id), INDEX IDX_DD5E7275E7A1254A (contact_id), PRIMARY KEY(mission_id, contact_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE mission_cible (mission_id INT NOT NULL, cible_id INT NOT NULL, INDEX IDX_71CBB306BE6CAE90 (mission_id), INDEX IDX_71CBB306A96E5E09 (cible_id), PRIMARY KEY(mission_id, cible_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
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
        $this->addSql('ALTER TABLE mission ADD type_mission_id INT NOT NULL, ADD statut_id INT NOT NULL, ADD pays_id INT NOT NULL');
        $this->addSql('ALTER TABLE mission ADD CONSTRAINT FK_9067F23CA36F78B5 FOREIGN KEY (type_mission_id) REFERENCES type_mission (id)');
        $this->addSql('ALTER TABLE mission ADD CONSTRAINT FK_9067F23CF6203804 FOREIGN KEY (statut_id) REFERENCES statut (id)');
        $this->addSql('ALTER TABLE mission ADD CONSTRAINT FK_9067F23CA6E44244 FOREIGN KEY (pays_id) REFERENCES pays (id)');
        $this->addSql('CREATE INDEX IDX_9067F23CA36F78B5 ON mission (type_mission_id)');
        $this->addSql('CREATE INDEX IDX_9067F23CF6203804 ON mission (statut_id)');
        $this->addSql('CREATE INDEX IDX_9067F23CA6E44244 ON mission (pays_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('DROP TABLE mission_planque');
        $this->addSql('DROP TABLE mission_speciality');
        $this->addSql('DROP TABLE mission_agent');
        $this->addSql('DROP TABLE mission_contact');
        $this->addSql('DROP TABLE mission_cible');
        $this->addSql('ALTER TABLE agent CHANGE firstname firstname VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE lastname lastname VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE cible CHANGE firstname firstname VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE lastname lastname VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE name_code name_code VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE contact CHANGE name name VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE lastname lastname VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE nom_code nom_code VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE messenger_messages CHANGE body body LONGTEXT NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE headers headers LONGTEXT NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE queue_name queue_name VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE mission DROP FOREIGN KEY FK_9067F23CA36F78B5');
        $this->addSql('ALTER TABLE mission DROP FOREIGN KEY FK_9067F23CF6203804');
        $this->addSql('ALTER TABLE mission DROP FOREIGN KEY FK_9067F23CA6E44244');
        $this->addSql('DROP INDEX IDX_9067F23CA36F78B5 ON mission');
        $this->addSql('DROP INDEX IDX_9067F23CF6203804 ON mission');
        $this->addSql('DROP INDEX IDX_9067F23CA6E44244 ON mission');
        $this->addSql('ALTER TABLE mission DROP type_mission_id, DROP statut_id, DROP pays_id, CHANGE non_code non_code VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE titre titre VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE description description LONGTEXT NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE slug slug VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE nationality CHANGE name_nationality name_nationality VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE pays CHANGE name name VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE planque CHANGE name name VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE adresse adresse LONGTEXT NOT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE speciality CHANGE name name VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE statut CHANGE name_statut name_statut VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE type_mission CHANGE name name VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE type_planque CHANGE name name VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE user CHANGE email email VARCHAR(180) NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE password password VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE firstname firstname VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE lastname lastname VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`');
    }
}
