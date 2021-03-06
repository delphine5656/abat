<?php

namespace App\Form;


use App\Classe\Search;
use App\Entity\TypeMission;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class SearchType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('string', TextType::class, [
                'label'=> false,
                'required' => false,
                'attr' => [
                    'placeholder' => 'taper votre recherche',
                    'class'=> 'form-control-sm'
                ]
            ])
            ->add('types', EntityType::class, [
                'label'=> false,
                'required' => false,
                'class' => TypeMission::class,
                'multiple'=> true,
                'expanded' => true
            ])

            ->add('submit', SubmitType::class, [
                'label' => 'filtrer',
                'attr' => [
                    'class' => 'btn btn-danger'
                ]

            ]);

    }


    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Search::class,
            'method' => 'GET',
            'csrf_protection' => false,
        ]);
    }

    public function getBlockPrefix()
    {
        return '';
    }
}